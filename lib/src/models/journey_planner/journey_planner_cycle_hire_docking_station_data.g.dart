// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_planner_cycle_hire_docking_station_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyPlannerCycleHireDockingStationData
    _$JourneyPlannerCycleHireDockingStationDataFromJson(
        Map<String, dynamic> json) {
  return JourneyPlannerCycleHireDockingStationData(
    originNumberOfBikes: json['originNumberOfBikes'] as int?,
    destinationNumberOfBikes: json['destinationNumberOfBikes'] as int?,
    originNumberOfEmptySlots: json['originNumberOfEmptySlots'] as int?,
    destinationNumberOfEmptySlots:
        json['destinationNumberOfEmptySlots'] as int?,
    originId: json['originId'] as String?,
    destinationId: json['destinationId'] as String?,
  );
}

Map<String, dynamic> _$JourneyPlannerCycleHireDockingStationDataToJson(
        JourneyPlannerCycleHireDockingStationData instance) =>
    <String, dynamic>{
      'originNumberOfBikes': instance.originNumberOfBikes,
      'destinationNumberOfBikes': instance.destinationNumberOfBikes,
      'originNumberOfEmptySlots': instance.originNumberOfEmptySlots,
      'destinationNumberOfEmptySlots': instance.destinationNumberOfEmptySlots,
      'originId': instance.originId,
      'destinationId': instance.destinationId,
    };
