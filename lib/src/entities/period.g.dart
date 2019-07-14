// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return Period(
      type: json['type'] as String,
      fromTime: json['fromTime'] == null
          ? null
          : TwentyFourHourClockTime.fromJson(
              json['fromTime'] as Map<String, dynamic>),
      toTime: json['toTime'] == null
          ? null
          : TwentyFourHourClockTime.fromJson(
              json['toTime'] as Map<String, dynamic>),
      frequency: json['frequency'] == null
          ? null
          : ServiceFrequency.fromJson(
              json['frequency'] as Map<String, dynamic>));
}

Map<String, dynamic> _$PeriodToJson(Period instance) => <String, dynamic>{
      'type': instance.type,
      'fromTime': instance.fromTime,
      'toTime': instance.toTime,
      'frequency': instance.frequency
    };
