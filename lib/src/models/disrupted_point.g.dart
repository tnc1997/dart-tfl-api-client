// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disrupted_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisruptedPoint _$DisruptedPointFromJson(Map<String, dynamic> json) {
  return DisruptedPoint(
    atcoCode: json['atcoCode'] as String?,
    fromDate: json['fromDate'] == null
        ? null
        : DateTime.parse(json['fromDate'] as String),
    toDate: json['toDate'] == null
        ? null
        : DateTime.parse(json['toDate'] as String),
    description: json['description'] as String?,
    commonName: json['commonName'] as String?,
    type: json['type'] as String?,
    mode: json['mode'] as String?,
    stationAtcoCode: json['stationAtcoCode'] as String?,
    appearance: json['appearance'] as String?,
    additionalInformation: json['additionalInformation'] as String?,
  );
}

Map<String, dynamic> _$DisruptedPointToJson(DisruptedPoint instance) =>
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
      'additionalInformation': instance.additionalInformation,
    };
