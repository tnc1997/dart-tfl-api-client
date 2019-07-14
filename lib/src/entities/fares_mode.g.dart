// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fares_mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaresMode _$FaresModeFromJson(Map<String, dynamic> json) {
  return FaresMode(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String);
}

Map<String, dynamic> _$FaresModeToJson(FaresMode instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description
    };
