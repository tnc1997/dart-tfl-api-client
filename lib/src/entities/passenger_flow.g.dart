// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassengerFlow _$PassengerFlowFromJson(Map<String, dynamic> json) {
  return PassengerFlow(
      timeSlice: json['timeSlice'] as String, value: json['value'] as int);
}

Map<String, dynamic> _$PassengerFlowToJson(PassengerFlow instance) =>
    <String, dynamic>{'timeSlice': instance.timeSlice, 'value': instance.value};
