// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Point2 _$Point2FromJson(Map<String, dynamic> json) {
  return Point2(
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$Point2ToJson(Point2 instance) => <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
    };
