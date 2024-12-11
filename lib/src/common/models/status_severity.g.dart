// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'status_severity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StatusSeverity _$StatusSeverityFromJson(Map<String, dynamic> json) {
  return StatusSeverity(
    modeName: json['modeName'] as String?,
    severityLevel: json['severityLevel'] as int?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$StatusSeverityToJson(StatusSeverity instance) =>
    <String, dynamic>{
      'modeName': instance.modeName,
      'severityLevel': instance.severityLevel,
      'description': instance.description,
    };
