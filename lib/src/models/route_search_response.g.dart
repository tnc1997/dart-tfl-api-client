// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_search_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSearchResponse _$RouteSearchResponseFromJson(Map<String, dynamic> json) {
  return RouteSearchResponse(
    input: json['input'] as String?,
    searchMatches: (json['searchMatches'] as List<dynamic>?)
        ?.map((e) => RouteSearchMatch.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteSearchResponseToJson(
        RouteSearchResponse instance) =>
    <String, dynamic>{
      'input': instance.input,
      'searchMatches': instance.searchMatches,
    };
