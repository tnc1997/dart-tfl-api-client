// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlacesResponse _$PlacesResponseFromJson(Map<String, dynamic> json) {
  return PlacesResponse(
    centrePoint: (json['centrePoint'] as List<dynamic>?)
        ?.map((e) => (e as num).toDouble())
        .toList(),
    places: (json['places'] as List<dynamic>?)
        ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PlacesResponseToJson(PlacesResponse instance) =>
    <String, dynamic>{
      'centrePoint': instance.centrePoint,
      'places': instance.places,
    };
