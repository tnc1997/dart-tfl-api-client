// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_adjustment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeAdjustment _$TimeAdjustmentFromJson(Map<String, dynamic> json) {
  return TimeAdjustment(
      date: json['date'] as String,
      time: json['time'] as String,
      timeIs: json['timeIs'] as String,
      uri: json['uri'] as String);
}

Map<String, dynamic> _$TimeAdjustmentToJson(TimeAdjustment instance) =>
    <String, dynamic>{
      'date': instance.date,
      'time': instance.time,
      'timeIs': instance.timeIs,
      'uri': instance.uri
    };
