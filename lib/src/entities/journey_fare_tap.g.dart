// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_fare_tap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyFareTap _$JourneyFareTapFromJson(Map<String, dynamic> json) {
  return JourneyFareTap(
      atcoCode: json['atcoCode'] as String,
      tapDetails: json['tapDetails'] == null
          ? null
          : JourneyFareTapDetails.fromJson(
              json['tapDetails'] as Map<String, dynamic>));
}

Map<String, dynamic> _$JourneyFareTapToJson(JourneyFareTap instance) =>
    <String, dynamic>{
      'atcoCode': instance.atcoCode,
      'tapDetails': instance.tapDetails
    };
