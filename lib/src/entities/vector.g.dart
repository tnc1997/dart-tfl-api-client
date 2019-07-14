// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Vector _$VectorFromJson(Map<String, dynamic> json) {
  return Vector(
      from: json['from'] as String,
      to: json['to'] as String,
      via: json['via'] as String,
      uri: json['uri'] as String);
}

Map<String, dynamic> _$VectorToJson(Vector instance) => <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'via': instance.via,
      'uri': instance.uri
    };
