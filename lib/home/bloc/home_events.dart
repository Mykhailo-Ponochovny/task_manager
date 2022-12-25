part of home_bloc;

abstract class HomeEvent {
  const HomeEvent();
}

@freezed
class GetProcessorInfo with _$GetProcessorInfo implements HomeEvent {
  const factory GetProcessorInfo() = GetProcessorInfo$;
}

@freezed
class SetSortBy with _$SetSortBy implements HomeEvent {
  const factory SetSortBy({required SortType sortType}) = SetSortBy$;
}

@freezed
class GetConfiguration with _$GetConfiguration implements HomeEvent {
  const factory GetConfiguration() = GetConfiguration$;
}

@freezed
class InitWMI with _$InitWMI implements HomeEvent {
  const factory InitWMI() = InitWMI$;
}

@freezed
class TerminateProcess with _$TerminateProcess implements HomeEvent {
  const factory TerminateProcess({required int id}) = TerminateProcess$;
}
