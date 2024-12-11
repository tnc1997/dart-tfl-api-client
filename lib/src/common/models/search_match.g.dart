// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchMatch _$SearchMatchFromJson(Map<String, dynamic> json) {
  return SearchMatch(
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$SearchMatchToJson(SearchMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
    };
