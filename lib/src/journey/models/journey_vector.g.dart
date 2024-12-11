// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey_vector.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

JourneyVector _$JourneyVectorFromJson(Map<String, dynamic> json) {
  return JourneyVector(
    from: json['from'] as String?,
    to: json['to'] as String?,
    via: json['via'] as String?,
    uri: json['uri'] as String?,
  );
}

Map<String, dynamic> _$JourneyVectorToJson(JourneyVector instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'via': instance.via,
      'uri': instance.uri,
    };
