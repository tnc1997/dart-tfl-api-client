// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSearchMatch _$RouteSearchMatchFromJson(Map<String, dynamic> json) {
  return RouteSearchMatch(
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    lineId: json['lineId'] as String?,
    mode: json['mode'] as String?,
    lineName: json['lineName'] as String?,
    lineRouteSection: (json['lineRouteSection'] as List<dynamic>?)
        ?.map((e) => LineRouteSection.fromJson(e as Map<String, dynamic>))
        .toList(),
    matchedRouteSections: (json['matchedRouteSections'] as List<dynamic>?)
        ?.map((e) => MatchedRouteSections.fromJson(e as Map<String, dynamic>))
        .toList(),
    matchedStops: (json['matchedStops'] as List<dynamic>?)
        ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RouteSearchMatchToJson(RouteSearchMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'lineId': instance.lineId,
      'mode': instance.mode,
      'lineName': instance.lineName,
      'lineRouteSection': instance.lineRouteSection,
      'matchedRouteSections': instance.matchedRouteSections,
      'matchedStops': instance.matchedStops,
    };
