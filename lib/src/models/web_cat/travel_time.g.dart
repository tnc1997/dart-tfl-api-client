// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TravelTime _$TravelTimeFromJson(Map<String, dynamic> json) {
  return TravelTime(
    zoneId: json['zoneId'] as int?,
    time: (json['time'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$TravelTimeToJson(TravelTime instance) =>
    <String, dynamic>{
      'zoneId': instance.zoneId,
      'time': instance.time,
    };
