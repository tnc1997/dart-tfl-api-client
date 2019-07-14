// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geo_code_search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GeoCodeSearchMatch _$GeoCodeSearchMatchFromJson(Map<String, dynamic> json) {
  return GeoCodeSearchMatch(
      types: (json['types'] as List)?.map((e) => e as String)?.toList(),
      address: json['address'] as String,
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      lat: (json['lat'] as num)?.toDouble(),
      lon: (json['lon'] as num)?.toDouble());
}

Map<String, dynamic> _$GeoCodeSearchMatchToJson(GeoCodeSearchMatch instance) =>
    <String, dynamic>{
      'types': instance.types,
      'address': instance.address,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon
    };
