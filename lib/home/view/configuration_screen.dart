import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_manager/home/bloc/index.dart';

class ConfigurationScreen extends StatefulWidget {
  const ConfigurationScreen({super.key});

  @override
  State<ConfigurationScreen> createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      if (state.processes == null || state.configuration == null) {
        return Container(
          color: Colors.black,
          alignment: Alignment.center,
          child: const CircularProgressIndicator(
            color: Colors.red,
          ),
        );
      }

      List<Widget> GPUs = <Widget>[];
      List<Widget> disks = <Widget>[];
      List<Widget> adapters = <Widget>[];
      for (final widget in state.configuration!.modelGPU) {
        GPUs.add(Text(widget));
      }
      for (final widget in state.configuration!.physicalDisk) {
        disks.add(getWidgetFromMap("Name", widget['name'] as String));
        disks.add(getWidgetFromMap(
            "Size",
            ((widget['size'] as int) / 1024 / 1024 / 1024).toStringAsFixed(0) +
                ' GB'));
      }
      for (final widget in state.configuration!.modelNetworkAdapter) {
        adapters.add(Text(widget));
      }

      return Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'CPU:',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text('model: ${state.configuration?.modelCPU ?? ''}'),
          const Text(
            'GPU:',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: GPUs,
          ),
          const Text(
            'Memory:',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Text(
            'Total: ${((state.configuration?.memorySize ?? 0) / 1024 / 1024 / 1024).toStringAsFixed(1)}GB',
          ),
          Text(
            'Usage: ${((state.configuration?.memoryUsage ?? 0) / 1024 / 1024 / 1024).toStringAsFixed(1)}GB',
          ),
          const Text(
            'Disk:',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Column(
            children: disks,
          ),
          const Text(
            'Network adapters:',
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          Column(
            children: adapters,
          ),
        ],
      );
    });
  }

  Widget getWidgetFromMap(String name, String value) {
    return Text('$name: $value');
  }
}
