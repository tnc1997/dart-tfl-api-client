// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_superhighway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CycleSuperhighway _$CycleSuperhighwayFromJson(Map<String, dynamic> json) {
  return CycleSuperhighway(
    id: json['id'] as String?,
    label: json['label'] as String?,
    labelShort: json['labelShort'] as String?,
    segmented: json['segmented'] as bool?,
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    status: json['status'] as String?,
    routeType: json['routeType'] as String?,
  );
}

Map<String, dynamic> _$CycleSuperhighwayToJson(CycleSuperhighway instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.label,
      'labelShort': instance.labelShort,
      'segmented': instance.segmented,
      'modified': instance.modified?.toIso8601String(),
      'status': instance.status,
      'routeType': instance.routeType,
    };
