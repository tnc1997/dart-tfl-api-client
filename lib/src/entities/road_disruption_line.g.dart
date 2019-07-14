// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_disruption_line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadDisruptionLine _$RoadDisruptionLineFromJson(Map<String, dynamic> json) {
  return RoadDisruptionLine(
      id: json['id'] as int,
      roadDisruptionId: json['roadDisruptionId'] as String,
      isDiversion: json['isDiversion'] as bool,
      multiLineString: json['multiLineString'] == null
          ? null
          : DbGeography.fromJson(
              json['multiLineString'] as Map<String, dynamic>),
      startDate: json['startDate'] == null
          ? null
          : DateTime.parse(json['startDate'] as String),
      endDate: json['endDate'] == null
          ? null
          : DateTime.parse(json['endDate'] as String),
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String);
}

Map<String, dynamic> _$RoadDisruptionLineToJson(RoadDisruptionLine instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roadDisruptionId': instance.roadDisruptionId,
      'isDiversion': instance.isDiversion,
      'multiLineString': instance.multiLineString,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime
    };
