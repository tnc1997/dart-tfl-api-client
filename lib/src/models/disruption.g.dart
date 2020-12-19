// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disruption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disruption _$DisruptionFromJson(Map<String, dynamic> json) {
  return Disruption(
    id: json['id'] as String?,
    category: json['category'] as String?,
    type: json['type'] as String?,
    categoryDescription: json['categoryDescription'] as String?,
    description: json['description'] as String?,
    summary: json['summary'] as String?,
    additionalInfo: json['additionalInfo'] as String?,
    created: json['created'] == null
        ? null
        : DateTime.parse(json['created'] as String),
    lastUpdate: json['lastUpdate'] == null
        ? null
        : DateTime.parse(json['lastUpdate'] as String),
    affectedRoutes: (json['affectedRoutes'] as List<dynamic>?)
        ?.map((e) => RouteSection.fromJson(e as Map<String, dynamic>))
        .toList(),
    affectedStops: (json['affectedStops'] as List<dynamic>?)
        ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
        .toList(),
    isBlocking: json['isBlocking'] as bool?,
    isWholeLine: json['isWholeLine'] as bool?,
    closureText: json['closureText'] as String?,
  );
}

Map<String, dynamic> _$DisruptionToJson(Disruption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category': instance.category,
      'type': instance.type,
      'categoryDescription': instance.categoryDescription,
      'description': instance.description,
      'summary': instance.summary,
      'additionalInfo': instance.additionalInfo,
      'created': instance.created?.toIso8601String(),
      'lastUpdate': instance.lastUpdate?.toIso8601String(),
      'affectedRoutes': instance.affectedRoutes,
      'affectedStops': instance.affectedStops,
      'isBlocking': instance.isBlocking,
      'isWholeLine': instance.isWholeLine,
      'closureText': instance.closureText,
    };
