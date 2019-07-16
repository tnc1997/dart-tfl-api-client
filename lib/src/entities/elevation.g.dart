// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'elevation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Elevation _$ElevationFromJson(Map<String, dynamic> json) {
  return Elevation(
      distance: json['distance'] as int,
      startLat: (json['startLat'] as num)?.toDouble(),
      startLon: (json['startLon'] as num)?.toDouble(),
      endLat: (json['endLat'] as num)?.toDouble(),
      endLon: (json['endLon'] as num)?.toDouble(),
      heightFromPreviousPoint: json['heightFromPreviousPoint'] as int,
      gradient: (json['gradient'] as num)?.toDouble());
}

Map<String, dynamic> _$ElevationToJson(Elevation instance) => <String, dynamic>{
      'distance': instance.distance,
      'startLat': instance.startLat,
      'startLon': instance.startLon,
      'endLat': instance.endLat,
      'endLon': instance.endLon,
      'heightFromPreviousPoint': instance.heightFromPreviousPoint,
      'gradient': instance.gradient
    };
