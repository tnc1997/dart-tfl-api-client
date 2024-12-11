// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_specific_service_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineSpecificServiceType _$LineSpecificServiceTypeFromJson(
    Map<String, dynamic> json) {
  return LineSpecificServiceType(
    serviceType: json['serviceType'] == null
        ? null
        : LineServiceTypeInfo.fromJson(
            json['serviceType'] as Map<String, dynamic>),
    stopServesServiceType: json['stopServesServiceType'] as bool?,
  );
}

Map<String, dynamic> _$LineSpecificServiceTypeToJson(
        LineSpecificServiceType instance) =>
    <String, dynamic>{
      'serviceType': instance.serviceType,
      'stopServesServiceType': instance.stopServesServiceType,
    };
