// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disruption_override.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisruptionOverride _$DisruptionOverrideFromJson(Map<String, dynamic> json) {
  return DisruptionOverride(
    id: json['id'] as int?,
    lineId: json['lineId'] as String?,
    statusSeverityId: json['statusSeverityId'] as int?,
    description: json['description'] as String?,
    lineName: json['lineName'] as String?,
    modeName: json['modeName'] as String?,
  );
}

Map<String, dynamic> _$DisruptionOverrideToJson(DisruptionOverride instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lineId': instance.lineId,
      'statusSeverityId': instance.statusSeverityId,
      'description': instance.description,
      'lineName': instance.lineName,
      'modeName': instance.modeName,
    };
