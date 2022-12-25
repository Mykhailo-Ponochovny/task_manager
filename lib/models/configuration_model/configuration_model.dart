import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration_model.freezed.dart';
part 'configuration_model.g.dart';

@freezed
class ConfigurationModel with _$ConfigurationModel {
  const factory ConfigurationModel({
    required String modelCPU,
    required List<String> modelGPU,
    required List<String> modelNetworkAdapter,
    required List<Map<String, dynamic>> physicalDisk,
    @Default(0) int memorySize,
    @Default(0) int memoryUsage,
  }) = _ConfigurationModel;
  factory ConfigurationModel.fromJson(Map<String, dynamic> json) =>
      _$ConfigurationModelFromJson(Map<String, dynamic>.from(json));
}
