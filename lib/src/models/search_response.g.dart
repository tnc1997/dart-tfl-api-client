// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResponse _$SearchResponseFromJson(Map<String, dynamic> json) {
  return SearchResponse(
    query: json['query'] as String?,
    from: json['from'] as int?,
    page: json['page'] as int?,
    pageSize: json['pageSize'] as int?,
    provider: json['provider'] as String?,
    total: json['total'] as int?,
    matches: (json['matches'] as List<dynamic>?)
        ?.map((e) => SearchMatch.fromJson(e as Map<String, dynamic>))
        .toList(),
    maxScore: (json['maxScore'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$SearchResponseToJson(SearchResponse instance) =>
    <String, dynamic>{
      'query': instance.query,
      'from': instance.from,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'provider': instance.provider,
      'total': instance.total,
      'matches': instance.matches,
      'maxScore': instance.maxScore,
    };
