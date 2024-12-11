// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annual_contactless_payg_cap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnualContactlessPaygCap _$AnnualContactlessPaygCapFromJson(
    Map<String, dynamic> json) {
  return AnnualContactlessPaygCap(
    priceYear: json['priceYear'] as int?,
    fareType: json['fareType'] as String?,
    monSunCap: json['monSunCap'] == null
        ? null
        : ZoneFare.fromJson(json['monSunCap'] as Map<String, dynamic>),
    dailyAnytimeCap: json['dailyAnytimeCap'] == null
        ? null
        : ZoneFare.fromJson(json['dailyAnytimeCap'] as Map<String, dynamic>),
    dailyOffPeakCap: json['dailyOffPeakCap'] == null
        ? null
        : ZoneFare.fromJson(json['dailyOffPeakCap'] as Map<String, dynamic>),
    journeyZoneScope: json['journeyZoneScope'] == null
        ? null
        : ZoneScope.fromJson(json['journeyZoneScope'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnualContactlessPaygCapToJson(
        AnnualContactlessPaygCap instance) =>
    <String, dynamic>{
      'priceYear': instance.priceYear,
      'fareType': instance.fareType,
      'monSunCap': instance.monSunCap,
      'dailyAnytimeCap': instance.dailyAnytimeCap,
      'dailyOffPeakCap': instance.dailyOffPeakCap,
      'journeyZoneScope': instance.journeyZoneScope,
    };
