// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_fare_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyFareDetails _$JourneyFareDetailsFromJson(Map<String, dynamic> json) {
  return JourneyFareDetails(
      lowZone: json['lowZone'] as int,
      highZone: json['highZone'] as int,
      cost: json['cost'] as int,
      chargeProfileName: json['chargeProfileName'] as String,
      isHopperFare: json['isHopperFare'] as bool,
      chargeLevel: json['chargeLevel'] as String,
      peak: json['peak'] as int,
      offPeak: json['offPeak'] as int,
      taps: (json['taps'] as List)
          ?.map((e) => e == null
              ? null
              : JourneyFareTap.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$JourneyFareDetailsToJson(JourneyFareDetails instance) =>
    <String, dynamic>{
      'lowZone': instance.lowZone,
      'highZone': instance.highZone,
      'cost': instance.cost,
      'chargeProfileName': instance.chargeProfileName,
      'isHopperFare': instance.isHopperFare,
      'chargeLevel': instance.chargeLevel,
      'peak': instance.peak,
      'offPeak': instance.offPeak,
      'taps': instance.taps
    };
