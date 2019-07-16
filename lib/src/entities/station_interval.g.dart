// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_interval.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationInterval _$StationIntervalFromJson(Map<String, dynamic> json) {
  return StationInterval(
      id: json['id'] as String,
      intervals: (json['intervals'] as List)
          ?.map((e) =>
              e == null ? null : Interval.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$StationIntervalToJson(StationInterval instance) =>
    <String, dynamic>{'id': instance.id, 'intervals': instance.intervals};
