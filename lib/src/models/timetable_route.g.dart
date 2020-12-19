// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable_route.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimetableRoute _$TimetableRouteFromJson(Map<String, dynamic> json) {
  return TimetableRoute(
    stationIntervals: (json['stationIntervals'] as List<dynamic>?)
        ?.map((e) => StationInterval.fromJson(e as Map<String, dynamic>))
        .toList(),
    schedules: (json['schedules'] as List<dynamic>?)
        ?.map((e) => Schedule.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$TimetableRouteToJson(TimetableRoute instance) =>
    <String, dynamic>{
      'stationIntervals': instance.stationIntervals,
      'schedules': instance.schedules,
    };
