part of home_bloc;

typedef HelloWorld = Pointer<Utf8> Function();
typedef BoolFuncFfi = Bool Function();
typedef BoolFunc = bool Function();

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState()) {
    _initWMI();
    on<GetProcessorInfo>(_getProcessorInfo);
    on<SetSortBy>(_setSortBy);
    on<GetConfiguration>(_getConfiguration);
    on<TerminateProcess>(_terminateProcess);
  }
  final _dylib = DynamicLibrary.open('assets/for_coursework.dll');

  Future<void> _getConfiguration(
    GetConfiguration event,
    Emitter<HomeState> emit,
  ) async {
    final configurationFunc =
        _dylib.lookupFunction<HelloWorld, HelloWorld>('getConfiguration');
    final configurationMessage = configurationFunc().toDartString();
    final jsonMessage = json.decode(configurationMessage);
    final configuration =
        ConfigurationModel.fromJson(jsonMessage as Map<String, dynamic>);
    emit(state.copyWith(configuration: configuration));
  }

  void _initWMI() {
    final distance = _dylib.lookupFunction<BoolFuncFfi, BoolFunc>('initWMI');
    final result = distance();
    final status = result ? 'successfully' : 'filed';
    log('Initial WMI $status');
  }

  Future<void> _getProcessorInfo(
    GetProcessorInfo event,
    Emitter<HomeState> emit,
  ) async {
    final processesFunc =
        _dylib.lookupFunction<HelloWorld, HelloWorld>('getProcesses');
    final processesMessage = processesFunc().toDartString();
    var processes = (json.decode(processesMessage) as List)
        .map((data) => ProcessModel.fromJson(data as Map<String, dynamic>))
        .toList()
      ..sort(
        (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
      );

    var sortProcesses = <ProcessModel>[];

    for (var index = 0, sortIndex = -1; index < processes.length; index++) {
      if (sortProcesses.isNotEmpty &&
          processes[index].name == sortProcesses[sortIndex].name) {
        if (sortProcesses[sortIndex].children == null) {
          sortProcesses[sortIndex] =
              sortProcesses[sortIndex].copyWith(children: <ProcessModel>[]);
        }

        sortProcesses[sortIndex] = sortProcesses[sortIndex].copyWith(
          children: List.from(sortProcesses[sortIndex].children!)
            ..add(processes[index]),
        );
      } else {
        sortIndex++;
        sortProcesses.add(processes[index]);
      }
    }

    for (var process in sortProcesses) {
      if (process.children != null && process.children!.isNotEmpty) {
        for (var children in process.children!) {
          if (process.id != children.id) {
            process = process.copyWith(
              memoryUsage: process.memoryUsage + children.memoryUsage,
              diskUsage: process.diskUsage + children.diskUsage,
            );
          }
        }
      }
    }
    emit(state.copyWith(processes: _sortProcesses(sortProcesses)));
  }

  List<ProcessModel> _sortProcesses(
    List<ProcessModel>? processes,
  ) {
    List<ProcessModel>? newSortModels = processes?.toList();

    switch (state.sortType) {
      case SortType.byName:
        if (state.reverseSort) {
          newSortModels?.sort(
            (b, a) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
          );
        } else {
          newSortModels?.sort(
            (a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()),
          );
        }

        break;
      case SortType.byId:
        if (state.reverseSort) {
          newSortModels?.sort(
            (b, a) => a.id.compareTo(b.id),
          );
        } else {
          newSortModels?.sort(
            (a, b) => a.id.compareTo(b.id),
          );
        }

        break;
      case SortType.byMemoryUsage:
        if (state.reverseSort) {
          newSortModels?.sort(
            (b, a) => a.memoryUsage.compareTo(b.memoryUsage),
          );
        } else {
          newSortModels?.sort(
            (a, b) => a.memoryUsage.compareTo(b.memoryUsage),
          );
        }

        break;
      case SortType.byDiskUsage:
        if (state.reverseSort) {
          newSortModels?.sort(
            (b, a) => a.diskUsage.compareTo(b.diskUsage),
          );
        } else {
          newSortModels?.sort(
            (a, b) => a.diskUsage.compareTo(b.diskUsage),
          );
        }
        break;
      case SortType.byPriority:
        if (state.reverseSort) {
          newSortModels?.sort(
            (b, a) => a.priority.compareTo(b.priority),
          );
        } else {
          newSortModels?.sort(
            (a, b) => a.priority.compareTo(b.priority),
          );
        }
        break;
    }
    return newSortModels ?? <ProcessModel>[];
  }

  void _setSortBy(SetSortBy event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        sortType: event.sortType,
        reverseSort: event.sortType == state.sortType
            ? !state.reverseSort
            : state.reverseSort,
        processes: _sortProcesses(state.processes),
      ),
    );
  }

  void _terminateProcess(TerminateProcess event, Emitter<HomeState> emit) {
    late Function terminateProcess;
    final _terminateProcess =
        _dylib.lookup<NativeFunction<Void Function(Int32)>>('terminateProcess');
    terminateProcess = _terminateProcess.asFunction<void Function(int)>();

    terminateProcess(event.id);
  }
}
