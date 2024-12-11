// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_service_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineServiceType _$LineServiceTypeFromJson(Map<String, dynamic> json) {
  return LineServiceType(
    lineName: json['lineName'] as String?,
    lineSpecificServiceTypes: (json['lineSpecificServiceTypes']
            as List<dynamic>?)
        ?.map(
            (e) => LineSpecificServiceType.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LineServiceTypeToJson(LineServiceType instance) =>
    <String, dynamic>{
      'lineName': instance.lineName,
      'lineSpecificServiceTypes': instance.lineSpecificServiceTypes,
    };
