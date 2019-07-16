// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PassengerType _$PassengerTypeFromJson(Map<String, dynamic> json) {
  return PassengerType(
      type: json['type'] as String,
      description: json['description'] as String,
      displayName: json['displayName'] as String,
      displayOrder: json['displayOrder'] as int);
}

Map<String, dynamic> _$PassengerTypeToJson(PassengerType instance) =>
    <String, dynamic>{
      'type': instance.type,
      'description': instance.description,
      'displayName': instance.displayName,
      'displayOrder': instance.displayOrder
    };
