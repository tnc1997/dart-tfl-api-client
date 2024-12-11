// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Point1 _$Point1FromJson(Map<String, dynamic> json) {
  return Point1(
    name: json['name'] as String?,
    shortName: json['shortName'] as String?,
    stopId: json['stopId'] as String?,
    type: json['type'] as String?,
    usage: json['usage'] as String?,
    associatedTime: json['associatedTime'] == null
        ? null
        : DateTime.parse(json['associatedTime'] as String),
    hasStaticInfo: json['hasStaticInfo'] as bool?,
    maps: (json['maps'] as List<dynamic>?)
        ?.map((e) => MapItem.fromJson(e as Map<String, dynamic>))
        .toList(),
    modes: (json['modes'] as List<dynamic>?)
        ?.map((e) => Mode.fromJson(e as Map<String, dynamic>))
        .toList(),
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
    area: json['area'] as String?,
    matchQuality: json['matchQuality'] as int?,
    fullName: json['fullName'] as String?,
  );
}

Map<String, dynamic> _$Point1ToJson(Point1 instance) => <String, dynamic>{
      'name': instance.name,
      'shortName': instance.shortName,
      'stopId': instance.stopId,
      'type': instance.type,
      'usage': instance.usage,
      'associatedTime': instance.associatedTime?.toIso8601String(),
      'hasStaticInfo': instance.hasStaticInfo,
      'maps': instance.maps,
      'modes': instance.modes,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'area': instance.area,
      'matchQuality': instance.matchQuality,
      'fullName': instance.fullName,
    };
