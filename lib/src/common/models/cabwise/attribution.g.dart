// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attribution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Attribution _$AttributionFromJson(Map<String, dynamic> json) {
  return Attribution(
    link: json['link'] as String?,
    text: json['text'] as String?,
    logo: json['logo'] as String?,
  );
}

Map<String, dynamic> _$AttributionToJson(Attribution instance) =>
    <String, dynamic>{
      'link': instance.link,
      'text': instance.text,
      'logo': instance.logo,
    };
