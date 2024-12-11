// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationRequest _$RecommendationRequestFromJson(
    Map<String, dynamic> json) {
  return RecommendationRequest(
    period: json['period'] as String?,
    peak: json['peak'] as bool?,
    zones: json['zones'] as String?,
    busOnly: json['busOnly'] as bool?,
    ageGroup: json['ageGroup'] as String?,
    discountCard: json['discountCard'] as String?,
    railcard: json['railcard'] as String?,
    photocard: json['photocard'] as bool?,
    freebus: json['freebus'] as bool?,
  );
}

Map<String, dynamic> _$RecommendationRequestToJson(
        RecommendationRequest instance) =>
    <String, dynamic>{
      'period': instance.period,
      'peak': instance.peak,
      'zones': instance.zones,
      'busOnly': instance.busOnly,
      'ageGroup': instance.ageGroup,
      'discountCard': instance.discountCard,
      'railcard': instance.railcard,
      'photocard': instance.photocard,
      'freebus': instance.freebus,
    };
