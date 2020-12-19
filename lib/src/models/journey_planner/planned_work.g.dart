// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_work.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedWork _$PlannedWorkFromJson(Map<String, dynamic> json) {
  return PlannedWork(
    id: json['id'] as String?,
    description: json['description'] as String?,
    createdDateTime: json['createdDateTime'] == null
        ? null
        : DateTime.parse(json['createdDateTime'] as String),
    lastUpdateDateTime: json['lastUpdateDateTime'] == null
        ? null
        : DateTime.parse(json['lastUpdateDateTime'] as String),
  );
}

Map<String, dynamic> _$PlannedWorkToJson(PlannedWork instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'createdDateTime': instance.createdDateTime?.toIso8601String(),
      'lastUpdateDateTime': instance.lastUpdateDateTime?.toIso8601String(),
    };
