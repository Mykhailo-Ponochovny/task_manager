// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'process_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProcessModel _$ProcessModelFromJson(Map<String, dynamic> json) {
  return _ProcessModel.fromJson(json);
}

/// @nodoc
mixin _$ProcessModel {
  String get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  int get memoryUsage => throw _privateConstructorUsedError;
  int get diskUsage => throw _privateConstructorUsedError;
  int get priority => throw _privateConstructorUsedError;
  List<ProcessModel>? get children => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProcessModelCopyWith<ProcessModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProcessModelCopyWith<$Res> {
  factory $ProcessModelCopyWith(
          ProcessModel value, $Res Function(ProcessModel) then) =
      _$ProcessModelCopyWithImpl<$Res, ProcessModel>;
  @useResult
  $Res call(
      {String name,
      int id,
      int memoryUsage,
      int diskUsage,
      int priority,
      List<ProcessModel>? children});
}

/// @nodoc
class _$ProcessModelCopyWithImpl<$Res, $Val extends ProcessModel>
    implements $ProcessModelCopyWith<$Res> {
  _$ProcessModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? memoryUsage = null,
    Object? diskUsage = null,
    Object? priority = null,
    Object? children = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as int,
      diskUsage: null == diskUsage
          ? _value.diskUsage
          : diskUsage // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      children: freezed == children
          ? _value.children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProcessModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProcessModelCopyWith<$Res>
    implements $ProcessModelCopyWith<$Res> {
  factory _$$_ProcessModelCopyWith(
          _$_ProcessModel value, $Res Function(_$_ProcessModel) then) =
      __$$_ProcessModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int id,
      int memoryUsage,
      int diskUsage,
      int priority,
      List<ProcessModel>? children});
}

/// @nodoc
class __$$_ProcessModelCopyWithImpl<$Res>
    extends _$ProcessModelCopyWithImpl<$Res, _$_ProcessModel>
    implements _$$_ProcessModelCopyWith<$Res> {
  __$$_ProcessModelCopyWithImpl(
      _$_ProcessModel _value, $Res Function(_$_ProcessModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? memoryUsage = null,
    Object? diskUsage = null,
    Object? priority = null,
    Object? children = freezed,
  }) {
    return _then(_$_ProcessModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as int,
      diskUsage: null == diskUsage
          ? _value.diskUsage
          : diskUsage // ignore: cast_nullable_to_non_nullable
              as int,
      priority: null == priority
          ? _value.priority
          : priority // ignore: cast_nullable_to_non_nullable
              as int,
      children: freezed == children
          ? _value._children
          : children // ignore: cast_nullable_to_non_nullable
              as List<ProcessModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProcessModel implements _ProcessModel {
  _$_ProcessModel(
      {required this.name,
      this.id = 0,
      this.memoryUsage = 0,
      this.diskUsage = 0,
      this.priority = 0,
      final List<ProcessModel>? children})
      : _children = children;

  factory _$_ProcessModel.fromJson(Map<String, dynamic> json) =>
      _$$_ProcessModelFromJson(json);

  @override
  final String name;
  @override
  @JsonKey()
  final int id;
  @override
  @JsonKey()
  final int memoryUsage;
  @override
  @JsonKey()
  final int diskUsage;
  @override
  @JsonKey()
  final int priority;
  final List<ProcessModel>? _children;
  @override
  List<ProcessModel>? get children {
    final value = _children;
    if (value == null) return null;
    if (_children is EqualUnmodifiableListView) return _children;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProcessModel(name: $name, id: $id, memoryUsage: $memoryUsage, diskUsage: $diskUsage, priority: $priority, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProcessModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.memoryUsage, memoryUsage) ||
                other.memoryUsage == memoryUsage) &&
            (identical(other.diskUsage, diskUsage) ||
                other.diskUsage == diskUsage) &&
            (identical(other.priority, priority) ||
                other.priority == priority) &&
            const DeepCollectionEquality().equals(other._children, _children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, memoryUsage, diskUsage,
      priority, const DeepCollectionEquality().hash(_children));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProcessModelCopyWith<_$_ProcessModel> get copyWith =>
      __$$_ProcessModelCopyWithImpl<_$_ProcessModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProcessModelToJson(
      this,
    );
  }
}

abstract class _ProcessModel implements ProcessModel {
  factory _ProcessModel(
      {required final String name,
      final int id,
      final int memoryUsage,
      final int diskUsage,
      final int priority,
      final List<ProcessModel>? children}) = _$_ProcessModel;

  factory _ProcessModel.fromJson(Map<String, dynamic> json) =
      _$_ProcessModel.fromJson;

  @override
  String get name;
  @override
  int get id;
  @override
  int get memoryUsage;
  @override
  int get diskUsage;
  @override
  int get priority;
  @override
  List<ProcessModel>? get children;
  @override
  @JsonKey(ignore: true)
  _$$_ProcessModelCopyWith<_$_ProcessModel> get copyWith =>
      throw _privateConstructorUsedError;
}
