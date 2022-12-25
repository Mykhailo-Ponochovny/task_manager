part of home_bloc;

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    List<ProcessModel>? processes,
    ConfigurationModel? configuration,
    @Default(SortType.byMemoryUsage) SortType sortType,
    @Default(false) bool reverseSort,
  }) = HomeState$;
}
