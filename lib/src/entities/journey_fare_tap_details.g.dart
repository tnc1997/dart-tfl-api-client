// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_fare_tap_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyFareTapDetails _$JourneyFareTapDetailsFromJson(
    Map<String, dynamic> json) {
  return JourneyFareTapDetails(
      modeType: json['modeType'] as String,
      validationType: json['validationType'] as String,
      hostDeviceType: json['hostDeviceType'] as String,
      busRouteId: json['busRouteId'] as String,
      nationalLocationCode: json['nationalLocationCode'] as int,
      tapTimestamp: json['tapTimestamp'] == null
          ? null
          : DateTime.parse(json['tapTimestamp'] as String));
}

Map<String, dynamic> _$JourneyFareTapDetailsToJson(
        JourneyFareTapDetails instance) =>
    <String, dynamic>{
      'modeType': instance.modeType,
      'validationType': instance.validationType,
      'hostDeviceType': instance.hostDeviceType,
      'busRouteId': instance.busRouteId,
      'nationalLocationCode': instance.nationalLocationCode,
      'tapTimestamp': instance.tapTimestamp?.toIso8601String()
    };
