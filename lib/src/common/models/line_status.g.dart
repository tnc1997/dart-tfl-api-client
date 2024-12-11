// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineStatus _$LineStatusFromJson(Map<String, dynamic> json) {
  return LineStatus(
    id: json['id'] as int?,
    lineId: json['lineId'] as String?,
    statusSeverity: json['statusSeverity'] as int?,
    statusSeverityDescription: json['statusSeverityDescription'] as String?,
    reason: json['reason'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    validityPeriod: (json['validityPeriod'] as List<dynamic>?)
        ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
        .toList(),
    disruption: json['disruption'] == null
        ? null
        : Disruption.fromJson(json['disruption'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LineStatusToJson(LineStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lineId': instance.lineId,
      'statusSeverity': instance.statusSeverity,
      'statusSeverityDescription': instance.statusSeverityDescription,
      'reason': instance.reason,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'validityPeriod': instance.validityPeriod,
      'disruption': instance.disruption,
    };
