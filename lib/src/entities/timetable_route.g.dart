// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimetableRoute _$TimetableRouteFromJson(Map<String, dynamic> json) {
  return TimetableRoute(
      stationIntervals: (json['stationIntervals'] as List)
          ?.map((e) => e == null
              ? null
              : StationInterval.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      schedules: (json['schedules'] as List)
          ?.map((e) =>
              e == null ? null : Schedule.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TimetableRouteToJson(TimetableRoute instance) =>
    <String, dynamic>{
      'stationIntervals': instance.stationIntervals,
      'schedules': instance.schedules
    };
