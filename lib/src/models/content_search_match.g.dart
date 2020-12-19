// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content_search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContentSearchMatch _$ContentSearchMatchFromJson(Map<String, dynamic> json) {
  return ContentSearchMatch(
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    score: (json['score'] as num?)?.toDouble(),
    ext: json['ext'] as String?,
    lastModified: json['lastModified'] == null
        ? null
        : DateTime.parse(json['lastModified'] as String),
    date: json['date'] == null ? null : DateTime.parse(json['date'] as String),
    highlights: (json['highlights'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$ContentSearchMatchToJson(ContentSearchMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'score': instance.score,
      'ext': instance.ext,
      'lastModified': instance.lastModified?.toIso8601String(),
      'date': instance.date?.toIso8601String(),
      'highlights': instance.highlights,
    };
