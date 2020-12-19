// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_severity_drop_down.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusSeverityDropDown _$StatusSeverityDropDownFromJson(
    Map<String, dynamic> json) {
  return StatusSeverityDropDown(
    id: json['id'] as int?,
    modeName: json['modeName'] as String?,
    severityLevel: json['severityLevel'] as int?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$StatusSeverityDropDownToJson(
        StatusSeverityDropDown instance) =>
    <String, dynamic>{
      'id': instance.id,
      'modeName': instance.modeName,
      'severityLevel': instance.severityLevel,
      'description': instance.description,
    };
