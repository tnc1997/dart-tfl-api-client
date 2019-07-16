// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItineraryResult _$ItineraryResultFromJson(Map<String, dynamic> json) {
  return ItineraryResult(
      journeys: (json['journeys'] as List)
          ?.map((e) =>
              e == null ? null : Journey.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      lines: (json['lines'] as List)
          ?.map((e) =>
              e == null ? null : Line.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      cycleHireDockingStationData: json['cycleHireDockingStationData'] == null
          ? null
          : CycleHireDockingStationData.fromJson(
              json['cycleHireDockingStationData'] as Map<String, dynamic>),
      stopMessages:
          (json['stopMessages'] as List)?.map((e) => e as String)?.toList(),
      recommendedMaxAgeMinutes: json['recommendedMaxAgeMinutes'] as int,
      searchCriteria: json['searchCriteria'] == null
          ? null
          : SearchCriteria.fromJson(
              json['searchCriteria'] as Map<String, dynamic>),
      journeyVector: json['journeyVector'] == null
          ? null
          : Vector.fromJson(json['journeyVector'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ItineraryResultToJson(ItineraryResult instance) =>
    <String, dynamic>{
      'journeys': instance.journeys,
      'lines': instance.lines,
      'cycleHireDockingStationData': instance.cycleHireDockingStationData,
      'stopMessages': instance.stopMessages,
      'recommendedMaxAgeMinutes': instance.recommendedMaxAgeMinutes,
      'searchCriteria': instance.searchCriteria,
      'journeyVector': instance.journeyVector
    };
