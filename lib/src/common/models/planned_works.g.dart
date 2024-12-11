// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planned_works.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlannedWorks _$PlannedWorksFromJson(Map<String, dynamic> json) {
  return PlannedWorks(
    id: json['id'] as String?,
    description: json['description'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    lastUpdate: json['lastUpdate'] == null
        ? null
        : DateTime.parse(json['lastUpdate'] as String),
    validityDates: (json['validityDates'] as List<dynamic>?)
        ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
        .toList(),
    affectedRoutes: (json['affectedRoutes'] as List<dynamic>?)
        ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    affectedStops: (json['affectedStops'] as List<dynamic>?)
        ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    affectedModes: (json['affectedModes'] as List<dynamic>?)
        ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    isBlocking: json['isBlocking'] as bool?,
    isWholeLine: json['isWholeLine'] as bool?,
  );
}

Map<String, dynamic> _$PlannedWorksToJson(PlannedWorks instance) =>
    <String, dynamic>{
      'id': instance.id,
      'description': instance.description,
      'created': instance.created?.toIso8601String(),
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'validityDates': instance.validityDates,
      'affectedRoutes': instance.affectedRoutes,
      'affectedStops': instance.affectedStops,
      'affectedModes': instance.affectedModes,
      'isBlocking': instance.isBlocking,
      'isWholeLine': instance.isWholeLine,
    };
