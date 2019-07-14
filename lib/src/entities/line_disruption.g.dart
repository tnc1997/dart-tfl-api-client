// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_disruption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineDisruption _$LineDisruptionFromJson(Map<String, dynamic> json) {
  return LineDisruption(
      category: json['category'] as String,
      type: json['type'] as String,
      categoryDescription: json['categoryDescription'] as String,
      description: json['description'] as String,
      summary: json['summary'] as String,
      additionalInfo: json['additionalInfo'] as String,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      lastUpdate: json['lastUpdate'] == null
          ? null
          : DateTime.parse(json['lastUpdate'] as String),
      affectedRoutes: (json['affectedRoutes'] as List)
          ?.map((e) => e == null
              ? null
              : RouteSection.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      affectedStops: (json['affectedStops'] as List)
          ?.map((e) =>
              e == null ? null : StopPoint.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      closureText: json['closureText'] as String);
}

Map<String, dynamic> _$LineDisruptionToJson(LineDisruption instance) =>
    <String, dynamic>{
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
      'closureText': instance.closureText
    };
