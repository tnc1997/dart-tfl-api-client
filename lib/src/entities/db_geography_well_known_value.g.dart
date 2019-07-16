// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_geography_well_known_value.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DbGeographyWellKnownValue _$DbGeographyWellKnownValueFromJson(
    Map<String, dynamic> json) {
  return DbGeographyWellKnownValue(
      coordinateSystemId: json['coordinateSystemId'] as int,
      wellKnownText: json['wellKnownText'] as String,
      wellKnownBinary:
          (json['wellKnownBinary'] as List)?.map((e) => e as int)?.toList());
}

Map<String, dynamic> _$DbGeographyWellKnownValueToJson(
        DbGeographyWellKnownValue instance) =>
    <String, dynamic>{
      'coordinateSystemId': instance.coordinateSystemId,
      'wellKnownText': instance.wellKnownText,
      'wellKnownBinary': instance.wellKnownBinary
    };
