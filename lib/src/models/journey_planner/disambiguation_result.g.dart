// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disambiguation_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisambiguationResult _$DisambiguationResultFromJson(Map<String, dynamic> json) {
  return DisambiguationResult(
    recommendedMaxAgeMinutes: json['recommendedMaxAgeMinutes'] as int?,
    searchCriteria: json['searchCriteria'] == null
        ? null
        : SearchCriteria.fromJson(
            json['searchCriteria'] as Map<String, dynamic>),
    journeyVector: json['journeyVector'] == null
        ? null
        : JourneyVector.fromJson(json['journeyVector'] as Map<String, dynamic>),
    toLocationDisambiguation: json['toLocationDisambiguation'] == null
        ? null
        : Disambiguation1.fromJson(
            json['toLocationDisambiguation'] as Map<String, dynamic>),
    fromLocationDisambiguation: json['fromLocationDisambiguation'] == null
        ? null
        : Disambiguation1.fromJson(
            json['fromLocationDisambiguation'] as Map<String, dynamic>),
    viaLocationDisambiguation: json['viaLocationDisambiguation'] == null
        ? null
        : Disambiguation1.fromJson(
            json['viaLocationDisambiguation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DisambiguationResultToJson(
        DisambiguationResult instance) =>
    <String, dynamic>{
      'recommendedMaxAgeMinutes': instance.recommendedMaxAgeMinutes,
      'searchCriteria': instance.searchCriteria,
      'journeyVector': instance.journeyVector,
      'toLocationDisambiguation': instance.toLocationDisambiguation,
      'fromLocationDisambiguation': instance.fromLocationDisambiguation,
      'viaLocationDisambiguation': instance.viaLocationDisambiguation,
    };
