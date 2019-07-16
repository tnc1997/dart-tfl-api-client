// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_point_disruption.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPointDisruption _$StopPointDisruptionFromJson(Map<String, dynamic> json) {
  return StopPointDisruption(
      atcoCode: json['atcoCode'] as String,
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      description: json['description'] as String,
      commonName: json['commonName'] as String,
      type: json['type'] as String,
      mode: json['mode'] as String,
      stationAtcoCode: json['stationAtcoCode'] as String,
      appearance: json['appearance'] as String,
      additionalInformation: json['additionalInformation'] as String);
}

Map<String, dynamic> _$StopPointDisruptionToJson(
        StopPointDisruption instance) =>
    <String, dynamic>{
      'atcoCode': instance.atcoCode,
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'description': instance.description,
      'commonName': instance.commonName,
      'type': instance.type,
      'mode': instance.mode,
      'stationAtcoCode': instance.stationAtcoCode,
      'appearance': instance.appearance,
      'additionalInformation': instance.additionalInformation
    };
