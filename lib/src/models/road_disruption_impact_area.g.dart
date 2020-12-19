// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_disruption_impact_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadDisruptionImpactArea _$RoadDisruptionImpactAreaFromJson(
    Map<String, dynamic> json) {
  return RoadDisruptionImpactArea(
    id: json['id'] as int?,
    roadDisruptionId: json['roadDisruptionId'] as String?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    startTime: json['startTime'] as String?,
    endTime: json['endTime'] as String?,
  );
}

Map<String, dynamic> _$RoadDisruptionImpactAreaToJson(
        RoadDisruptionImpactArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'roadDisruptionId': instance.roadDisruptionId,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'startTime': instance.startTime,
      'endTime': instance.endTime,
    };
