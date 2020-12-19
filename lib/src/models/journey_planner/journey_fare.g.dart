// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_fare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyFare _$JourneyFareFromJson(Map<String, dynamic> json) {
  return JourneyFare(
    totalCost: json['totalCost'] as int?,
    fares: (json['fares'] as List<dynamic>?)
        ?.map((e) => Fare2.fromJson(e as Map<String, dynamic>))
        .toList(),
    caveats: (json['caveats'] as List<dynamic>?)
        ?.map((e) => FareCaveat.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$JourneyFareToJson(JourneyFare instance) =>
    <String, dynamic>{
      'totalCost': instance.totalCost,
      'fares': instance.fares,
      'caveats': instance.caveats,
    };
