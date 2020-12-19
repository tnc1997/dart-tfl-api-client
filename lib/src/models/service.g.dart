// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'service.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Service _$ServiceFromJson(Map<String, dynamic> json) {
  return Service(
    id: json['id'] as String?,
    lineId: json['lineId'] as String?,
    validTo: json['validTo'] == null
        ? null
        : DateTime.parse(json['validTo'] as String),
  );
}

Map<String, dynamic> _$ServiceToJson(Service instance) => <String, dynamic>{
      'id': instance.id,
      'lineId': instance.lineId,
      'validTo': instance.validTo?.toIso8601String(),
    };
