// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_json_object.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoJsonObject _$GeoJsonObjectFromJson(Map<String, dynamic> json) {
  return GeoJsonObject(
    type: json['type'] as String?,
    coordinates: (json['coordinates'] as List<dynamic>?)
        ?.map((e) => e as Object)
        .toList(),
  );
}

Map<String, dynamic> _$GeoJsonObjectToJson(GeoJsonObject instance) =>
    <String, dynamic>{
      'type': instance.type,
      'coordinates': instance.coordinates,
    };
