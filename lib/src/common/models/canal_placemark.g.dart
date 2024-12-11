// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'canal_placemark.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CanalPlacemark _$CanalPlacemarkFromJson(Map<String, dynamic> json) {
  return CanalPlacemark(
    id: json['id'] as int?,
    placemarkId: json['placemarkId'] as String?,
    name: json['name'] as String?,
    coordinates: json['coordinates'] as String?,
  );
}

Map<String, dynamic> _$CanalPlacemarkToJson(CanalPlacemark instance) =>
    <String, dynamic>{
      'id': instance.id,
      'placemarkId': instance.placemarkId,
      'name': instance.name,
      'coordinates': instance.coordinates,
    };
