// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_scope.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneScope _$ZoneScopeFromJson(Map<String, dynamic> json) {
  return ZoneScope(
    zoneFrom: json['zoneFrom'] as String?,
    zoneTo: json['zoneTo'] as String?,
    description: json['description'] as String?,
  );
}

Map<String, dynamic> _$ZoneScopeToJson(ZoneScope instance) => <String, dynamic>{
      'zoneFrom': instance.zoneFrom,
      'zoneTo': instance.zoneTo,
      'description': instance.description,
    };
