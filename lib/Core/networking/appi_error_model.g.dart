// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appi_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AppiErrorModel _$AppiErrorModelFromJson(Map<String, dynamic> json) =>
    AppiErrorModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
    );

Map<String, dynamic> _$AppiErrorModelToJson(AppiErrorModel instance) =>
    <String, dynamic>{'message': instance.message, 'code': instance.code};
