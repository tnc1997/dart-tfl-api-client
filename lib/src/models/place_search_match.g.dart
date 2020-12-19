// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceSearchMatch _$PlaceSearchMatchFromJson(Map<String, dynamic> json) {
  return PlaceSearchMatch(
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    address: json['address'] as String?,
    icon: json['icon'] as String?,
    boundingBox: json['boundingBox'],
  );
}

Map<String, dynamic> _$PlaceSearchMatchToJson(PlaceSearchMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'types': instance.types,
      'address': instance.address,
      'icon': instance.icon,
      'boundingBox': instance.boundingBox,
    };
