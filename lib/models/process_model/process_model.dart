import 'package:freezed_annotation/freezed_annotation.dart';

part 'process_model.freezed.dart';
part 'process_model.g.dart';

@freezed
class ProcessModel with _$ProcessModel {
  factory ProcessModel({
    required String name,
    @Default(0) int id,
    @Default(0) int memoryUsage,
    @Default(0) int diskUsage,
    @Default(0) int priority,
    List<ProcessModel>? children,
  }) = _ProcessModel;
  factory ProcessModel.fromJson(Map<String, dynamic> json) =>
      _$ProcessModelFromJson(Map<String, dynamic>.from(json));
}
