// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'road_disruption_schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoadDisruptionSchedule _$RoadDisruptionScheduleFromJson(
    Map<String, dynamic> json) {
  return RoadDisruptionSchedule(
    startTime: json['startTime'] == null
        ? null
        : DateTime.parse(json['startTime'] as String),
    endTime: json['endTime'] == null
        ? null
        : DateTime.parse(json['endTime'] as String),
  );
}

Map<String, dynamic> _$RoadDisruptionScheduleToJson(
        RoadDisruptionSchedule instance) =>
    <String, dynamic>{
      'startTime': instance.startTime?.toIso8601String(),
      'endTime': instance.endTime?.toIso8601String(),
    };
