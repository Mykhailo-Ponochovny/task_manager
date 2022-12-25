// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of home_bloc;

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  List<ProcessModel>? get processes => throw _privateConstructorUsedError;
  ConfigurationModel? get configuration => throw _privateConstructorUsedError;
  SortType get sortType => throw _privateConstructorUsedError;
  bool get reverseSort => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {List<ProcessModel>? processes,
      ConfigurationModel? configuration,
      SortType sortType,
      bool reverseSort});

  $ConfigurationModelCopyWith<$Res>? get configuration;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = freezed,
    Object? configuration = freezed,
    Object? sortType = null,
    Object? reverseSort = null,
  }) {
    return _then(_value.copyWith(
      processes: freezed == processes
          ? _value.processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<ProcessModel>?,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ConfigurationModel?,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      reverseSort: null == reverseSort
          ? _value.reverseSort
          : reverseSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ConfigurationModelCopyWith<$Res>? get configuration {
    if (_value.configuration == null) {
      return null;
    }

    return $ConfigurationModelCopyWith<$Res>(_value.configuration!, (value) {
      return _then(_value.copyWith(configuration: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HomeState$CopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$HomeState$CopyWith(
          _$HomeState$ value, $Res Function(_$HomeState$) then) =
      __$$HomeState$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ProcessModel>? processes,
      ConfigurationModel? configuration,
      SortType sortType,
      bool reverseSort});

  @override
  $ConfigurationModelCopyWith<$Res>? get configuration;
}

/// @nodoc
class __$$HomeState$CopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeState$>
    implements _$$HomeState$CopyWith<$Res> {
  __$$HomeState$CopyWithImpl(
      _$HomeState$ _value, $Res Function(_$HomeState$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? processes = freezed,
    Object? configuration = freezed,
    Object? sortType = null,
    Object? reverseSort = null,
  }) {
    return _then(_$HomeState$(
      processes: freezed == processes
          ? _value._processes
          : processes // ignore: cast_nullable_to_non_nullable
              as List<ProcessModel>?,
      configuration: freezed == configuration
          ? _value.configuration
          : configuration // ignore: cast_nullable_to_non_nullable
              as ConfigurationModel?,
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
      reverseSort: null == reverseSort
          ? _value.reverseSort
          : reverseSort // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeState$ implements HomeState$ {
  const _$HomeState$(
      {final List<ProcessModel>? processes,
      this.configuration,
      this.sortType = SortType.byMemoryUsage,
      this.reverseSort = false})
      : _processes = processes;

  final List<ProcessModel>? _processes;
  @override
  List<ProcessModel>? get processes {
    final value = _processes;
    if (value == null) return null;
    if (_processes is EqualUnmodifiableListView) return _processes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ConfigurationModel? configuration;
  @override
  @JsonKey()
  final SortType sortType;
  @override
  @JsonKey()
  final bool reverseSort;

  @override
  String toString() {
    return 'HomeState(processes: $processes, configuration: $configuration, sortType: $sortType, reverseSort: $reverseSort)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeState$ &&
            const DeepCollectionEquality()
                .equals(other._processes, _processes) &&
            (identical(other.configuration, configuration) ||
                other.configuration == configuration) &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType) &&
            (identical(other.reverseSort, reverseSort) ||
                other.reverseSort == reverseSort));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_processes),
      configuration,
      sortType,
      reverseSort);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeState$CopyWith<_$HomeState$> get copyWith =>
      __$$HomeState$CopyWithImpl<_$HomeState$>(this, _$identity);
}

abstract class HomeState$ implements HomeState {
  const factory HomeState$(
      {final List<ProcessModel>? processes,
      final ConfigurationModel? configuration,
      final SortType sortType,
      final bool reverseSort}) = _$HomeState$;

  @override
  List<ProcessModel>? get processes;
  @override
  ConfigurationModel? get configuration;
  @override
  SortType get sortType;
  @override
  bool get reverseSort;
  @override
  @JsonKey(ignore: true)
  _$$HomeState$CopyWith<_$HomeState$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetProcessorInfo {}

/// @nodoc
abstract class $GetProcessorInfoCopyWith<$Res> {
  factory $GetProcessorInfoCopyWith(
          GetProcessorInfo value, $Res Function(GetProcessorInfo) then) =
      _$GetProcessorInfoCopyWithImpl<$Res, GetProcessorInfo>;
}

/// @nodoc
class _$GetProcessorInfoCopyWithImpl<$Res, $Val extends GetProcessorInfo>
    implements $GetProcessorInfoCopyWith<$Res> {
  _$GetProcessorInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetProcessorInfo$CopyWith<$Res> {
  factory _$$GetProcessorInfo$CopyWith(
          _$GetProcessorInfo$ value, $Res Function(_$GetProcessorInfo$) then) =
      __$$GetProcessorInfo$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetProcessorInfo$CopyWithImpl<$Res>
    extends _$GetProcessorInfoCopyWithImpl<$Res, _$GetProcessorInfo$>
    implements _$$GetProcessorInfo$CopyWith<$Res> {
  __$$GetProcessorInfo$CopyWithImpl(
      _$GetProcessorInfo$ _value, $Res Function(_$GetProcessorInfo$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetProcessorInfo$ implements GetProcessorInfo$ {
  const _$GetProcessorInfo$();

  @override
  String toString() {
    return 'GetProcessorInfo()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetProcessorInfo$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class GetProcessorInfo$ implements GetProcessorInfo {
  const factory GetProcessorInfo$() = _$GetProcessorInfo$;
}

/// @nodoc
mixin _$SetSortBy {
  SortType get sortType => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSortByCopyWith<SetSortBy> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSortByCopyWith<$Res> {
  factory $SetSortByCopyWith(SetSortBy value, $Res Function(SetSortBy) then) =
      _$SetSortByCopyWithImpl<$Res, SetSortBy>;
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class _$SetSortByCopyWithImpl<$Res, $Val extends SetSortBy>
    implements $SetSortByCopyWith<$Res> {
  _$SetSortByCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_value.copyWith(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SetSortBy$CopyWith<$Res> implements $SetSortByCopyWith<$Res> {
  factory _$$SetSortBy$CopyWith(
          _$SetSortBy$ value, $Res Function(_$SetSortBy$) then) =
      __$$SetSortBy$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SortType sortType});
}

/// @nodoc
class __$$SetSortBy$CopyWithImpl<$Res>
    extends _$SetSortByCopyWithImpl<$Res, _$SetSortBy$>
    implements _$$SetSortBy$CopyWith<$Res> {
  __$$SetSortBy$CopyWithImpl(
      _$SetSortBy$ _value, $Res Function(_$SetSortBy$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sortType = null,
  }) {
    return _then(_$SetSortBy$(
      sortType: null == sortType
          ? _value.sortType
          : sortType // ignore: cast_nullable_to_non_nullable
              as SortType,
    ));
  }
}

/// @nodoc

class _$SetSortBy$ implements SetSortBy$ {
  const _$SetSortBy$({required this.sortType});

  @override
  final SortType sortType;

  @override
  String toString() {
    return 'SetSortBy(sortType: $sortType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSortBy$ &&
            (identical(other.sortType, sortType) ||
                other.sortType == sortType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sortType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSortBy$CopyWith<_$SetSortBy$> get copyWith =>
      __$$SetSortBy$CopyWithImpl<_$SetSortBy$>(this, _$identity);
}

abstract class SetSortBy$ implements SetSortBy {
  const factory SetSortBy$({required final SortType sortType}) = _$SetSortBy$;

  @override
  SortType get sortType;
  @override
  @JsonKey(ignore: true)
  _$$SetSortBy$CopyWith<_$SetSortBy$> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetConfiguration {}

/// @nodoc
abstract class $GetConfigurationCopyWith<$Res> {
  factory $GetConfigurationCopyWith(
          GetConfiguration value, $Res Function(GetConfiguration) then) =
      _$GetConfigurationCopyWithImpl<$Res, GetConfiguration>;
}

/// @nodoc
class _$GetConfigurationCopyWithImpl<$Res, $Val extends GetConfiguration>
    implements $GetConfigurationCopyWith<$Res> {
  _$GetConfigurationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetConfiguration$CopyWith<$Res> {
  factory _$$GetConfiguration$CopyWith(
          _$GetConfiguration$ value, $Res Function(_$GetConfiguration$) then) =
      __$$GetConfiguration$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetConfiguration$CopyWithImpl<$Res>
    extends _$GetConfigurationCopyWithImpl<$Res, _$GetConfiguration$>
    implements _$$GetConfiguration$CopyWith<$Res> {
  __$$GetConfiguration$CopyWithImpl(
      _$GetConfiguration$ _value, $Res Function(_$GetConfiguration$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetConfiguration$ implements GetConfiguration$ {
  const _$GetConfiguration$();

  @override
  String toString() {
    return 'GetConfiguration()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetConfiguration$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class GetConfiguration$ implements GetConfiguration {
  const factory GetConfiguration$() = _$GetConfiguration$;
}

/// @nodoc
mixin _$InitWMI {}

/// @nodoc
abstract class $InitWMICopyWith<$Res> {
  factory $InitWMICopyWith(InitWMI value, $Res Function(InitWMI) then) =
      _$InitWMICopyWithImpl<$Res, InitWMI>;
}

/// @nodoc
class _$InitWMICopyWithImpl<$Res, $Val extends InitWMI>
    implements $InitWMICopyWith<$Res> {
  _$InitWMICopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitWMI$CopyWith<$Res> {
  factory _$$InitWMI$CopyWith(
          _$InitWMI$ value, $Res Function(_$InitWMI$) then) =
      __$$InitWMI$CopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitWMI$CopyWithImpl<$Res>
    extends _$InitWMICopyWithImpl<$Res, _$InitWMI$>
    implements _$$InitWMI$CopyWith<$Res> {
  __$$InitWMI$CopyWithImpl(_$InitWMI$ _value, $Res Function(_$InitWMI$) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitWMI$ implements InitWMI$ {
  const _$InitWMI$();

  @override
  String toString() {
    return 'InitWMI()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitWMI$);
  }

  @override
  int get hashCode => runtimeType.hashCode;
}

abstract class InitWMI$ implements InitWMI {
  const factory InitWMI$() = _$InitWMI$;
}

/// @nodoc
mixin _$TerminateProcess {
  int get id => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TerminateProcessCopyWith<TerminateProcess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TerminateProcessCopyWith<$Res> {
  factory $TerminateProcessCopyWith(
          TerminateProcess value, $Res Function(TerminateProcess) then) =
      _$TerminateProcessCopyWithImpl<$Res, TerminateProcess>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$TerminateProcessCopyWithImpl<$Res, $Val extends TerminateProcess>
    implements $TerminateProcessCopyWith<$Res> {
  _$TerminateProcessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TerminateProcess$CopyWith<$Res>
    implements $TerminateProcessCopyWith<$Res> {
  factory _$$TerminateProcess$CopyWith(
          _$TerminateProcess$ value, $Res Function(_$TerminateProcess$) then) =
      __$$TerminateProcess$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$TerminateProcess$CopyWithImpl<$Res>
    extends _$TerminateProcessCopyWithImpl<$Res, _$TerminateProcess$>
    implements _$$TerminateProcess$CopyWith<$Res> {
  __$$TerminateProcess$CopyWithImpl(
      _$TerminateProcess$ _value, $Res Function(_$TerminateProcess$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$TerminateProcess$(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$TerminateProcess$ implements TerminateProcess$ {
  const _$TerminateProcess$({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'TerminateProcess(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TerminateProcess$ &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TerminateProcess$CopyWith<_$TerminateProcess$> get copyWith =>
      __$$TerminateProcess$CopyWithImpl<_$TerminateProcess$>(this, _$identity);
}

abstract class TerminateProcess$ implements TerminateProcess {
  const factory TerminateProcess$({required final int id}) =
      _$TerminateProcess$;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$TerminateProcess$CopyWith<_$TerminateProcess$> get copyWith =>
      throw _privateConstructorUsedError;
}
