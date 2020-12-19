// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waterway.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Waterway _$WaterwayFromJson(Map<String, dynamic> json) {
  return Waterway(
    id: json['id'] as int?,
    placeId: json['placeId'] as int?,
    description: json['description'] as String?,
    key: json['key'] as String?,
  );
}

Map<String, dynamic> _$WaterwayToJson(Waterway instance) => <String, dynamic>{
      'id': instance.id,
      'placeId': instance.placeId,
      'description': instance.description,
      'key': instance.key,
    };
