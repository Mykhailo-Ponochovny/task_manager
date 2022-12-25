import 'dart:async';

import 'package:context_menus/context_menus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/home/bloc/entities/sort_type.dart';
import 'package:task_manager/home/bloc/index.dart';
import 'package:task_manager/models/process_model/process_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final HomeBloc _homeBloc;

  @override
  void initState() {
    _homeBloc = context.read<HomeBloc>();

    Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        _homeBloc.add(const GetProcessorInfo());
      },
    );
    _homeBloc.add(const GetConfiguration());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {
        if (state.processes == null || state.configuration == null) {
          return Container(
            color: Colors.black,
            alignment: Alignment.center,
            child: const CircularProgressIndicator(
              color: Colors.red,
            ),
          );
        }
        return ContextMenuOverlay(
          child: MaterialApp(
            home: Scaffold(
              body: Column(
                children: [
                  ListTile(
                    title: Row(
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            _homeBloc.add(
                              const SetSortBy(sortType: SortType.byName),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 40, right: 110),
                            child: Text('name'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _homeBloc
                                .add(const SetSortBy(sortType: SortType.byId));
                          },
                          child: const Text('id\t'),
                        ),
                        TextButton(
                          onPressed: () {
                            _homeBloc.add(
                              const SetSortBy(sortType: SortType.byMemoryUsage),
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.only(left: 10, right: 20),
                            child: Text('memory'),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            _homeBloc.add(
                              const SetSortBy(sortType: SortType.byDiskUsage),
                            );
                          },
                          child: const Text('disk usage'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: state.processes!.length,
                      itemBuilder: (_, index) {
                        return processCard(state.processes![index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget processCard(ProcessModel processes) {
    if (processes.children == null) {
      return ContextMenuRegion(
        contextMenu: GenericContextMenu(
          buttonConfigs: [
            ContextMenuButtonConfig(
              "Close",
              onPressed: () {
                _homeBloc.add(TerminateProcess(id: processes.id));
              },
            )
          ],
        ),
        child: ListTile(
          leading: processes.children == null
              ? Container(
                  width: 24,
                )
              : IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.keyboard_arrow_right_outlined,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
          minLeadingWidth: 24,
          title: ColoredBox(
            color: Colors.greenAccent,
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: processes.name,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(width: 50, child: Text(processes.id.toString())),
                const SizedBox(width: 20),
                SizedBox(
                    width: 80,
                    child: Text(toStringMbytes(processes.memoryUsage))),
                const SizedBox(width: 20),
                Text(toStringMbytes(processes.diskUsage)),
              ],
            ),
          ),
        ),
      );
    }
    return ContextMenuRegion(
      contextMenu: GenericContextMenu(
        buttonConfigs: [
          ContextMenuButtonConfig(
            "Close",
            onPressed: () {
              _homeBloc.add(TerminateProcess(id: processes.id));
            },
          )
        ],
      ),
      child: ExpansionTile(
        // leading: processes.children == null

        controlAffinity: ListTileControlAffinity.leading,
        tilePadding: EdgeInsets.zero,
        title: ColoredBox(
          color: Colors.greenAccent,
          child: Row(
            children: [
              SizedBox(
                width: 150,
                child: RichText(
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  text: TextSpan(
                    style: const TextStyle(color: Colors.black),
                    text: '${processes.name}(${processes.children!.length})',
                  ),
                ),
              ),
              const SizedBox(width: 20),
              SizedBox(width: 50, child: Text(processes.id.toString())),
              const SizedBox(width: 20),
              SizedBox(
                  width: 80,
                  child: Text(toStringMbytes(processes.memoryUsage))),
              const SizedBox(width: 20),
              Text(toStringMbytes(processes.diskUsage)),
            ],
          ),
        ),
        children: getListTitleForChildren(processes.children) ?? [],
      ),
    );
  }

  List<Widget>? getListTitleForChildren(List<ProcessModel>? children) {
    if (children == null) {
      return null;
    }
    final list = <Widget>[];
    for (final process in children) {
      list.add(getListTitle(process));
    }
    return list;
  }

  Widget getListTitle(ProcessModel processes) {
    return ContextMenuRegion(
      contextMenu: GenericContextMenu(
        buttonConfigs: [
          ContextMenuButtonConfig(
            "Close",
            onPressed: () {
              _homeBloc.add(TerminateProcess(id: processes.id));
            },
          )
        ],
      ),
      child: ListTile(
        title: Padding(
          padding: const EdgeInsets.only(left: 70),
          child: ColoredBox(
            color: Colors.greenAccent,
            child: Row(
              children: [
                SizedBox(
                  width: 150,
                  child: RichText(
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    text: TextSpan(
                      style: const TextStyle(color: Colors.black),
                      text: processes.name,
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                Text(processes.id.toString()),
                const SizedBox(width: 20),
                Text(toStringMbytes(processes.memoryUsage)),
                const SizedBox(width: 20),
                Text(toStringMbytes(processes.diskUsage)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

String toStringMbytes(int value) {
  return (value / 1024 / 1024).toStringAsFixed(1) + 'Mb';
}
