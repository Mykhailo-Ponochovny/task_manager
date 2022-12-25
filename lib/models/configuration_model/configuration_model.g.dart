// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfigurationModel _$$_ConfigurationModelFromJson(
        Map<String, dynamic> json) =>
    _$_ConfigurationModel(
      modelCPU: json['modelCPU'] as String,
      modelGPU:
          (json['modelGPU'] as List<dynamic>).map((e) => e as String).toList(),
      modelNetworkAdapter: (json['modelNetworkAdapter'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      physicalDisk: (json['physicalDisk'] as List<dynamic>)
          .map((e) => e as Map<String, dynamic>)
          .toList(),
      memorySize: json['memorySize'] as int? ?? 0,
      memoryUsage: json['memoryUsage'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ConfigurationModelToJson(
        _$_ConfigurationModel instance) =>
    <String, dynamic>{
      'modelCPU': instance.modelCPU,
      'modelGPU': instance.modelGPU,
      'modelNetworkAdapter': instance.modelNetworkAdapter,
      'physicalDisk': instance.physicalDisk,
      'memorySize': instance.memorySize,
      'memoryUsage': instance.memoryUsage,
    };
