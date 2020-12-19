// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'annual_travel_card_fare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnnualTravelCardFare _$AnnualTravelCardFareFromJson(Map<String, dynamic> json) {
  return AnnualTravelCardFare(
    priceYear: json['priceYear'] as int?,
    fareType: json['fareType'] as String?,
    journeyZoneScope: json['journeyZoneScope'] == null
        ? null
        : ZoneScope.fromJson(json['journeyZoneScope'] as Map<String, dynamic>),
    dayOffPeak: json['dayOffPeak'] == null
        ? null
        : ZoneFare.fromJson(json['dayOffPeak'] as Map<String, dynamic>),
    dayAnytime: json['dayAnytime'] == null
        ? null
        : ZoneFare.fromJson(json['dayAnytime'] as Map<String, dynamic>),
    weekly: json['weekly'] == null
        ? null
        : ZoneFare.fromJson(json['weekly'] as Map<String, dynamic>),
    monthly: json['monthly'] == null
        ? null
        : ZoneFare.fromJson(json['monthly'] as Map<String, dynamic>),
    annual: json['annual'] == null
        ? null
        : ZoneFare.fromJson(json['annual'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$AnnualTravelCardFareToJson(
        AnnualTravelCardFare instance) =>
    <String, dynamic>{
      'priceYear': instance.priceYear,
      'fareType': instance.fareType,
      'journeyZoneScope': instance.journeyZoneScope,
      'dayOffPeak': instance.dayOffPeak,
      'dayAnytime': instance.dayAnytime,
      'weekly': instance.weekly,
      'monthly': instance.monthly,
      'annual': instance.annual,
    };
