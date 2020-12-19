// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendationResponse _$RecommendationResponseFromJson(
    Map<String, dynamic> json) {
  return RecommendationResponse(
    recommendations: (json['recommendations'] as List<dynamic>?)
        ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RecommendationResponseToJson(
        RecommendationResponse instance) =>
    <String, dynamic>{
      'recommendations': instance.recommendations,
    };
