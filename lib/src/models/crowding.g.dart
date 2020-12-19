// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crowding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crowding _$CrowdingFromJson(Map<String, dynamic> json) {
  return Crowding(
    passengerFlows: (json['passengerFlows'] as List<dynamic>?)
        ?.map((e) => PassengerFlow.fromJson(e as Map<String, dynamic>))
        .toList(),
    trainLoadings: (json['trainLoadings'] as List<dynamic>?)
        ?.map((e) => TrainLoading.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$CrowdingToJson(Crowding instance) => <String, dynamic>{
      'passengerFlows': instance.passengerFlows,
      'trainLoadings': instance.trainLoadings,
    };
