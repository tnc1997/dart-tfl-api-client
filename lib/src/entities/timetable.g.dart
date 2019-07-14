// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetable.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Timetable _$TimetableFromJson(Map<String, dynamic> json) {
  return Timetable(
      departureStopId: json['departureStopId'] as String,
      routes: (json['routes'] as List)
          ?.map((e) => e == null
              ? null
              : TimetableRoute.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TimetableToJson(Timetable instance) => <String, dynamic>{
      'departureStopId': instance.departureStopId,
      'routes': instance.routes
    };
