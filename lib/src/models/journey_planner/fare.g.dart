// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fare2 _$Fare2FromJson(Map<String, dynamic> json) {
  return Fare2(
    lowZone: json['lowZone'] as int?,
    highZone: json['highZone'] as int?,
    cost: json['cost'] as int?,
    chargeProfileName: json['chargeProfileName'] as String?,
    isHopperFare: json['isHopperFare'] as bool?,
    chargeLevel: json['chargeLevel'] as String?,
    peak: json['peak'] as int?,
    offPeak: json['offPeak'] as int?,
    taps: (json['taps'] as List<dynamic>?)
        ?.map((e) => FareTap.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$Fare2ToJson(Fare2 instance) => <String, dynamic>{
      'lowZone': instance.lowZone,
      'highZone': instance.highZone,
      'cost': instance.cost,
      'chargeProfileName': instance.chargeProfileName,
      'isHopperFare': instance.isHopperFare,
      'chargeLevel': instance.chargeLevel,
      'peak': instance.peak,
      'offPeak': instance.offPeak,
      'taps': instance.taps,
    };
