// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contactless_payg_cap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ContactlessPaygCap _$ContactlessPaygCapFromJson(Map<String, dynamic> json) {
  return ContactlessPaygCap(
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

Map<String, dynamic> _$ContactlessPaygCapToJson(ContactlessPaygCap instance) =>
    <String, dynamic>{
      'fareType': instance.fareType,
      'monSunCap': instance.monSunCap,
      'dailyAnytimeCap': instance.dailyAnytimeCap,
      'dailyOffPeakCap': instance.dailyOffPeakCap,
      'journeyZoneScope': instance.journeyZoneScope,
    };
