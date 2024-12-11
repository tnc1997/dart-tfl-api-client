// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Interval _$IntervalFromJson(Map<String, dynamic> json) {
  return Interval(
    stopId: json['stopId'] as String?,
    timeToArrival: (json['timeToArrival'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$IntervalToJson(Interval instance) => <String, dynamic>{
      'stopId': instance.stopId,
      'timeToArrival': instance.timeToArrival,
    };
