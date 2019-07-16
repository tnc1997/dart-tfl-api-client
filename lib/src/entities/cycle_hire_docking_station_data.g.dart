// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cycle_hire_docking_station_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CycleHireDockingStationData _$CycleHireDockingStationDataFromJson(
    Map<String, dynamic> json) {
  return CycleHireDockingStationData(
      originNumberOfBikes: json['originNumberOfBikes'] as int,
      destinationNumberOfBikes: json['destinationNumberOfBikes'] as int,
      originNumberOfEmptySlots: json['originNumberOfEmptySlots'] as int,
      destinationNumberOfEmptySlots:
          json['destinationNumberOfEmptySlots'] as int,
      originId: json['originId'] as String,
      destinationId: json['destinationId'] as String);
}

Map<String, dynamic> _$CycleHireDockingStationDataToJson(
        CycleHireDockingStationData instance) =>
    <String, dynamic>{
      'originNumberOfBikes': instance.originNumberOfBikes,
      'destinationNumberOfBikes': instance.destinationNumberOfBikes,
      'originNumberOfEmptySlots': instance.originNumberOfEmptySlots,
      'destinationNumberOfEmptySlots': instance.destinationNumberOfEmptySlots,
      'originId': instance.originId,
      'destinationId': instance.destinationId
    };
