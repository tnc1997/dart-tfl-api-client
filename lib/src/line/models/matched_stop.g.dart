// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'matched_stop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MatchedStop _$MatchedStopFromJson(Map<String, dynamic> json) {
  return MatchedStop(
    routeId: json['routeId'] as int?,
    parentId: json['parentId'] as String?,
    stationId: json['stationId'] as String?,
    icsId: json['icsId'] as String?,
    topMostParentId: json['topMostParentId'] as String?,
    direction: json['direction'] as String?,
    towards: json['towards'] as String?,
    modes: (json['modes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    stopType: json['stopType'] as String?,
    stopLetter: json['stopLetter'] as String?,
    zone: json['zone'] as String?,
    accessibilitySummary: json['accessibilitySummary'] as String?,
    hasDisruption: json['hasDisruption'] as bool?,
    lines: (json['lines'] as List<dynamic>?)
        ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'] as bool?,
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$MatchedStopToJson(MatchedStop instance) =>
    <String, dynamic>{
      'routeId': instance.routeId,
      'parentId': instance.parentId,
      'stationId': instance.stationId,
      'icsId': instance.icsId,
      'topMostParentId': instance.topMostParentId,
      'direction': instance.direction,
      'towards': instance.towards,
      'modes': instance.modes,
      'stopType': instance.stopType,
      'stopLetter': instance.stopLetter,
      'zone': instance.zone,
      'accessibilitySummary': instance.accessibilitySummary,
      'hasDisruption': instance.hasDisruption,
      'lines': instance.lines,
      'status': instance.status,
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
    };
