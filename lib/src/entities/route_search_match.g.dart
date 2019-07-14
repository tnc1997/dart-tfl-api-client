// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'route_search_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RouteSearchMatch _$RouteSearchMatchFromJson(Map<String, dynamic> json) {
  return RouteSearchMatch(
      lineId: json['lineId'] as String,
      mode: json['mode'] as String,
      lineName: json['lineName'] as String,
      lineRouteSection: (json['lineRouteSection'] as List)
          ?.map((e) => e == null
              ? null
              : LineRouteSection.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      matchedRouteSections: (json['matchedRouteSections'] as List)
          ?.map((e) => e == null
              ? null
              : MatchedRouteSections.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      matchedStops: (json['matchedStops'] as List)
          ?.map((e) => e == null
              ? null
              : MatchedStop.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      id: json['id'] as String,
      url: json['url'] as String,
      name: json['name'] as String,
      lat: (json['lat'] as num)?.toDouble(),
      lon: (json['lon'] as num)?.toDouble());
}

Map<String, dynamic> _$RouteSearchMatchToJson(RouteSearchMatch instance) =>
    <String, dynamic>{
      'lineId': instance.lineId,
      'mode': instance.mode,
      'lineName': instance.lineName,
      'lineRouteSection': instance.lineRouteSection,
      'matchedRouteSections': instance.matchedRouteSections,
      'matchedStops': instance.matchedStops,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon
    };
