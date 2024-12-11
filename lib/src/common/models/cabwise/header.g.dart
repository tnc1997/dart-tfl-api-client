// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'header.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Header _$HeaderFromJson(Map<String, dynamic> json) {
  return Header(
    publishDateTime: json['publishDateTime'] == null
        ? null
        : DateTime.parse(json['publishDateTime'] as String),
    identifier: json['identifier'] as String?,
    displayTitle: json['displayTitle'] as String?,
    version: json['version'] as String?,
    author: json['author'] as String?,
    owner: json['owner'] as String?,
    refreshRate: json['refreshRate'] as int?,
    maxLatency: json['maxLatency'] as int?,
    timeToError: json['timeToError'] as int?,
    schedule: json['schedule'] as String?,
    logo: json['logo'] as String?,
    language: json['language'] as String?,
    attribution: json['attribution'] == null
        ? null
        : Attribution.fromJson(json['attribution'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$HeaderToJson(Header instance) => <String, dynamic>{
      'publishDateTime': instance.publishDateTime?.toIso8601String(),
      'identifier': instance.identifier,
      'displayTitle': instance.displayTitle,
      'version': instance.version,
      'author': instance.author,
      'owner': instance.owner,
      'refreshRate': instance.refreshRate,
      'maxLatency': instance.maxLatency,
      'timeToError': instance.timeToError,
      'schedule': instance.schedule,
      'logo': instance.logo,
      'language': instance.language,
      'attribution': instance.attribution,
    };
