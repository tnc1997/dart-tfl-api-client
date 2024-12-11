// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Line _$LineFromJson(Map<String, dynamic> json) {
  return Line(
    id: json['id'] as String?,
    name: json['name'] as String?,
    modeName: json['modeName'] as String?,
    disruptions: (json['disruptions'] as List<dynamic>?)
        ?.map((e) => Disruption.fromJson(e as Map<String, dynamic>))
        .toList(),
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
    lineStatus: (json['lineStatus'] as List<dynamic>?)
        ?.map((e) => LineStatus.fromJson(e as Map<String, dynamic>))
        .toList(),
    routeSections: (json['routeSections'] as List<dynamic>?)
        ?.map((e) => MatchedRoute.fromJson(e as Map<String, dynamic>))
        .toList(),
    serviceTypes: (json['serviceTypes'] as List<dynamic>?)
        ?.map((e) => LineServiceTypeInfo.fromJson(e as Map<String, dynamic>))
        .toList(),
    crowding: json['crowding'] == null
        ? null
        : Crowding.fromJson(json['crowding'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LineToJson(Line instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'modeName': instance.modeName,
      'disruptions': instance.disruptions,
      'created': instance.created?.toIso8601String(),
      'modified': instance.modified?.toIso8601String(),
      'lineStatus': instance.lineStatus,
      'routeSections': instance.routeSections,
      'serviceTypes': instance.serviceTypes,
      'crowding': instance.crowding,
    };
