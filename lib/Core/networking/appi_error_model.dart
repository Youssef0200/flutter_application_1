
import 'package:json_annotation/json_annotation.dart';
part 'appi_error_model.g.dart';
@JsonSerializable()
class AppiErrorModel {
  final String? message;
  final int? code;

  AppiErrorModel({required this.message, required this.code});

  factory AppiErrorModel.fromJson(Map<String, dynamic> json) =>
      _$AppiErrorModelFromJson(json);

  Map<String, dynamic> toJson() => _$AppiErrorModelToJson(this);
}