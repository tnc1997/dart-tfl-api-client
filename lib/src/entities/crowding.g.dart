// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crowding.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Crowding _$CrowdingFromJson(Map<String, dynamic> json) {
  return Crowding(
      passengerFlows: (json['passengerFlows'] as List)
          ?.map((e) => e == null
              ? null
              : PassengerFlow.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      trainLoadings: (json['trainLoadings'] as List)
          ?.map((e) => e == null
              ? null
              : TrainLoading.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$CrowdingToJson(Crowding instance) => <String, dynamic>{
      'passengerFlows': instance.passengerFlows,
      'trainLoadings': instance.trainLoadings
    };
