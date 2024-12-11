// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coordinate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Coordinate _$CoordinateFromJson(Map<String, dynamic> json) {
  return Coordinate(
    longitude: (json['longitude'] as num?)?.toDouble(),
    latitude: (json['latitude'] as num?)?.toDouble(),
    easting: (json['easting'] as num?)?.toDouble(),
    northing: (json['northing'] as num?)?.toDouble(),
    xCoord: json['xCoord'] as int?,
    yCoord: json['yCoord'] as int?,
  );
}

Map<String, dynamic> _$CoordinateToJson(Coordinate instance) =>
    <String, dynamic>{
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'easting': instance.easting,
      'northing': instance.northing,
      'xCoord': instance.xCoord,
      'yCoord': instance.yCoord,
    };
