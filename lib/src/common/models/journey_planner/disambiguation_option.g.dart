// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disambiguation_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DisambiguationOption1 _$DisambiguationOption1FromJson(
    Map<String, dynamic> json) {
  return DisambiguationOption1(
    parameterValue: json['parameterValue'] as String?,
    uri: json['uri'] as String?,
    place: json['place'] == null
        ? null
        : Place.fromJson(json['place'] as Map<String, dynamic>),
    matchQuality: json['matchQuality'] as int?,
  );
}

Map<String, dynamic> _$DisambiguationOption1ToJson(
        DisambiguationOption1 instance) =>
    <String, dynamic>{
      'parameterValue': instance.parameterValue,
      'uri': instance.uri,
      'place': instance.place,
      'matchQuality': instance.matchQuality,
    };
