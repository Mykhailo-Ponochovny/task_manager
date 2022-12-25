// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfigurationModel _$ConfigurationModelFromJson(Map<String, dynamic> json) {
  return _ConfigurationModel.fromJson(json);
}

/// @nodoc
mixin _$ConfigurationModel {
  String get modelCPU => throw _privateConstructorUsedError;
  List<String> get modelGPU => throw _privateConstructorUsedError;
  List<String> get modelNetworkAdapter => throw _privateConstructorUsedError;
  List<Map<String, dynamic>> get physicalDisk =>
      throw _privateConstructorUsedError;
  int get memorySize => throw _privateConstructorUsedError;
  int get memoryUsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfigurationModelCopyWith<ConfigurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfigurationModelCopyWith<$Res> {
  factory $ConfigurationModelCopyWith(
          ConfigurationModel value, $Res Function(ConfigurationModel) then) =
      _$ConfigurationModelCopyWithImpl<$Res, ConfigurationModel>;
  @useResult
  $Res call(
      {String modelCPU,
      List<String> modelGPU,
      List<String> modelNetworkAdapter,
      List<Map<String, dynamic>> physicalDisk,
      int memorySize,
      int memoryUsage});
}

/// @nodoc
class _$ConfigurationModelCopyWithImpl<$Res, $Val extends ConfigurationModel>
    implements $ConfigurationModelCopyWith<$Res> {
  _$ConfigurationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelCPU = null,
    Object? modelGPU = null,
    Object? modelNetworkAdapter = null,
    Object? physicalDisk = null,
    Object? memorySize = null,
    Object? memoryUsage = null,
  }) {
    return _then(_value.copyWith(
      modelCPU: null == modelCPU
          ? _value.modelCPU
          : modelCPU // ignore: cast_nullable_to_non_nullable
              as String,
      modelGPU: null == modelGPU
          ? _value.modelGPU
          : modelGPU // ignore: cast_nullable_to_non_nullable
              as List<String>,
      modelNetworkAdapter: null == modelNetworkAdapter
          ? _value.modelNetworkAdapter
          : modelNetworkAdapter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      physicalDisk: null == physicalDisk
          ? _value.physicalDisk
          : physicalDisk // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      memorySize: null == memorySize
          ? _value.memorySize
          : memorySize // ignore: cast_nullable_to_non_nullable
              as int,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConfigurationModelCopyWith<$Res>
    implements $ConfigurationModelCopyWith<$Res> {
  factory _$$_ConfigurationModelCopyWith(_$_ConfigurationModel value,
          $Res Function(_$_ConfigurationModel) then) =
      __$$_ConfigurationModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String modelCPU,
      List<String> modelGPU,
      List<String> modelNetworkAdapter,
      List<Map<String, dynamic>> physicalDisk,
      int memorySize,
      int memoryUsage});
}

/// @nodoc
class __$$_ConfigurationModelCopyWithImpl<$Res>
    extends _$ConfigurationModelCopyWithImpl<$Res, _$_ConfigurationModel>
    implements _$$_ConfigurationModelCopyWith<$Res> {
  __$$_ConfigurationModelCopyWithImpl(
      _$_ConfigurationModel _value, $Res Function(_$_ConfigurationModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modelCPU = null,
    Object? modelGPU = null,
    Object? modelNetworkAdapter = null,
    Object? physicalDisk = null,
    Object? memorySize = null,
    Object? memoryUsage = null,
  }) {
    return _then(_$_ConfigurationModel(
      modelCPU: null == modelCPU
          ? _value.modelCPU
          : modelCPU // ignore: cast_nullable_to_non_nullable
              as String,
      modelGPU: null == modelGPU
          ? _value._modelGPU
          : modelGPU // ignore: cast_nullable_to_non_nullable
              as List<String>,
      modelNetworkAdapter: null == modelNetworkAdapter
          ? _value._modelNetworkAdapter
          : modelNetworkAdapter // ignore: cast_nullable_to_non_nullable
              as List<String>,
      physicalDisk: null == physicalDisk
          ? _value._physicalDisk
          : physicalDisk // ignore: cast_nullable_to_non_nullable
              as List<Map<String, dynamic>>,
      memorySize: null == memorySize
          ? _value.memorySize
          : memorySize // ignore: cast_nullable_to_non_nullable
              as int,
      memoryUsage: null == memoryUsage
          ? _value.memoryUsage
          : memoryUsage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfigurationModel implements _ConfigurationModel {
  const _$_ConfigurationModel(
      {required this.modelCPU,
      required final List<String> modelGPU,
      required final List<String> modelNetworkAdapter,
      required final List<Map<String, dynamic>> physicalDisk,
      this.memorySize = 0,
      this.memoryUsage = 0})
      : _modelGPU = modelGPU,
        _modelNetworkAdapter = modelNetworkAdapter,
        _physicalDisk = physicalDisk;

  factory _$_ConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$$_ConfigurationModelFromJson(json);

  @override
  final String modelCPU;
  final List<String> _modelGPU;
  @override
  List<String> get modelGPU {
    if (_modelGPU is EqualUnmodifiableListView) return _modelGPU;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelGPU);
  }

  final List<String> _modelNetworkAdapter;
  @override
  List<String> get modelNetworkAdapter {
    if (_modelNetworkAdapter is EqualUnmodifiableListView)
      return _modelNetworkAdapter;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modelNetworkAdapter);
  }

  final List<Map<String, dynamic>> _physicalDisk;
  @override
  List<Map<String, dynamic>> get physicalDisk {
    if (_physicalDisk is EqualUnmodifiableListView) return _physicalDisk;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_physicalDisk);
  }

  @override
  @JsonKey()
  final int memorySize;
  @override
  @JsonKey()
  final int memoryUsage;

  @override
  String toString() {
    return 'ConfigurationModel(modelCPU: $modelCPU, modelGPU: $modelGPU, modelNetworkAdapter: $modelNetworkAdapter, physicalDisk: $physicalDisk, memorySize: $memorySize, memoryUsage: $memoryUsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConfigurationModel &&
            (identical(other.modelCPU, modelCPU) ||
                other.modelCPU == modelCPU) &&
            const DeepCollectionEquality().equals(other._modelGPU, _modelGPU) &&
            const DeepCollectionEquality()
                .equals(other._modelNetworkAdapter, _modelNetworkAdapter) &&
            const DeepCollectionEquality()
                .equals(other._physicalDisk, _physicalDisk) &&
            (identical(other.memorySize, memorySize) ||
                other.memorySize == memorySize) &&
            (identical(other.memoryUsage, memoryUsage) ||
                other.memoryUsage == memoryUsage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      modelCPU,
      const DeepCollectionEquality().hash(_modelGPU),
      const DeepCollectionEquality().hash(_modelNetworkAdapter),
      const DeepCollectionEquality().hash(_physicalDisk),
      memorySize,
      memoryUsage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConfigurationModelCopyWith<_$_ConfigurationModel> get copyWith =>
      __$$_ConfigurationModelCopyWithImpl<_$_ConfigurationModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConfigurationModelToJson(
      this,
    );
  }
}

abstract class _ConfigurationModel implements ConfigurationModel {
  const factory _ConfigurationModel(
      {required final String modelCPU,
      required final List<String> modelGPU,
      required final List<String> modelNetworkAdapter,
      required final List<Map<String, dynamic>> physicalDisk,
      final int memorySize,
      final int memoryUsage}) = _$_ConfigurationModel;

  factory _ConfigurationModel.fromJson(Map<String, dynamic> json) =
      _$_ConfigurationModel.fromJson;

  @override
  String get modelCPU;
  @override
  List<String> get modelGPU;
  @override
  List<String> get modelNetworkAdapter;
  @override
  List<Map<String, dynamic>> get physicalDisk;
  @override
  int get memorySize;
  @override
  int get memoryUsage;
  @override
  @JsonKey(ignore: true)
  _$$_ConfigurationModelCopyWith<_$_ConfigurationModel> get copyWith =>
      throw _privateConstructorUsedError;
}
