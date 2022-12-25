// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'process_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProcessModel _$$_ProcessModelFromJson(Map<String, dynamic> json) =>
    _$_ProcessModel(
      name: json['name'] as String,
      id: json['id'] as int? ?? 0,
      memoryUsage: json['memoryUsage'] as int? ?? 0,
      diskUsage: json['diskUsage'] as int? ?? 0,
      priority: json['priority'] as int? ?? 0,
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => ProcessModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ProcessModelToJson(_$_ProcessModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'memoryUsage': instance.memoryUsage,
      'diskUsage': instance.diskUsage,
      'priority': instance.priority,
      'children': instance.children,
    };
