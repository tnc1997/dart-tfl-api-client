// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPoint _$StopPointFromJson(Map<String, dynamic> json) {
  return StopPoint(
    naptanId: json['naptanId'] as String?,
    platformName: json['platformName'] as String?,
    indicator: json['indicator'] as String?,
    stopLetter: json['stopLetter'] as String?,
    modes: (json['modes'] as List<dynamic>?)?.map((e) => e as String).toList(),
    icsCode: json['icsCode'] as String?,
    smsCode: json['smsCode'] as String?,
    stopType: json['stopType'] as String?,
    stationNaptan: json['stationNaptan'] as String?,
    accessibilitySummary: json['accessibilitySummary'] as String?,
    hubNaptanCode: json['hubNaptanCode'] as String?,
    lines: (json['lines'] as List<dynamic>?)
        ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
        .toList(),
    lineGroup: (json['lineGroup'] as List<dynamic>?)
        ?.map((e) => LineGroup.fromJson(e as Map<String, dynamic>))
        .toList(),
    lineModeGroups: (json['lineModeGroups'] as List<dynamic>?)
        ?.map((e) => LineModeGroup.fromJson(e as Map<String, dynamic>))
        .toList(),
    fullName: json['fullName'] as String?,
    naptanMode: json['naptanMode'] as String?,
    status: json['status'],
    id: json['id'] as String?,
    url: json['url'] as String?,
    commonName: json['commonName'] as String?,
    distance: (json['distance'] as num?)?.toDouble(),
    placeType: json['placeType'] as String?,
    additionalProperties: (json['additionalProperties'] as List<dynamic>?)
        ?.map((e) => AdditionalProperties.fromJson(e as Map<String, dynamic>))
        .toList(),
    children: (json['children'] as List<dynamic>?)
        ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
    childrenUrls: (json['childrenUrls'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$StopPointToJson(StopPoint instance) => <String, dynamic>{
      'naptanId': instance.naptanId,
      'platformName': instance.platformName,
      'indicator': instance.indicator,
      'stopLetter': instance.stopLetter,
      'modes': instance.modes,
      'icsCode': instance.icsCode,
      'smsCode': instance.smsCode,
      'stopType': instance.stopType,
      'stationNaptan': instance.stationNaptan,
      'accessibilitySummary': instance.accessibilitySummary,
      'hubNaptanCode': instance.hubNaptanCode,
      'lines': instance.lines,
      'lineGroup': instance.lineGroup,
      'lineModeGroups': instance.lineModeGroups,
      'fullName': instance.fullName,
      'naptanMode': instance.naptanMode,
      'status': instance.status,
      'id': instance.id,
      'url': instance.url,
      'commonName': instance.commonName,
      'distance': instance.distance,
      'placeType': instance.placeType,
      'additionalProperties': instance.additionalProperties,
      'children': instance.children,
      'childrenUrls': instance.childrenUrls,
      'lat': instance.lat,
      'lon': instance.lon,
    };
