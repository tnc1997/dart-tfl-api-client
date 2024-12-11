// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'itinerary_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ItineraryResult _$ItineraryResultFromJson(Map<String, dynamic> json) {
  return ItineraryResult(
    recommendedMaxAgeMinutes: json['recommendedMaxAgeMinutes'] as int?,
    searchCriteria: json['searchCriteria'] == null
        ? null
        : SearchCriteria.fromJson(
            json['searchCriteria'] as Map<String, dynamic>),
    journeyVector: json['journeyVector'] == null
        ? null
        : JourneyVector.fromJson(json['journeyVector'] as Map<String, dynamic>),
    journeys: (json['journeys'] as List<dynamic>?)
        ?.map((e) => Journey2.fromJson(e as Map<String, dynamic>))
        .toList(),
    lines: (json['lines'] as List<dynamic>?)
        ?.map((e) => Line.fromJson(e as Map<String, dynamic>))
        .toList(),
    cycleHireDockingStationData: json['cycleHireDockingStationData'] == null
        ? null
        : JourneyPlannerCycleHireDockingStationData.fromJson(
            json['cycleHireDockingStationData'] as Map<String, dynamic>),
    stopMessages: (json['stopMessages'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$ItineraryResultToJson(ItineraryResult instance) =>
    <String, dynamic>{
      'recommendedMaxAgeMinutes': instance.recommendedMaxAgeMinutes,
      'searchCriteria': instance.searchCriteria,
      'journeyVector': instance.journeyVector,
      'journeys': instance.journeys,
      'lines': instance.lines,
      'cycleHireDockingStationData': instance.cycleHireDockingStationData,
      'stopMessages': instance.stopMessages,
    };
