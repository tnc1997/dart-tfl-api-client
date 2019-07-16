// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_polygon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacePolygon _$PlacePolygonFromJson(Map<String, dynamic> json) {
  return PlacePolygon(
      geoPoints: (json['geoPoints'] as List)
          ?.map((e) =>
              e == null ? null : GeoPoint.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      commonName: json['commonName'] as String);
}

Map<String, dynamic> _$PlacePolygonToJson(PlacePolygon instance) =>
    <String, dynamic>{
      'geoPoints': instance.geoPoints,
      'commonName': instance.commonName
    };
