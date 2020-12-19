// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fares_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaresSection _$FaresSectionFromJson(Map<String, dynamic> json) {
  return FaresSection(
    header: json['header'] as String?,
    index: json['index'] as int?,
    journey: json['journey'] == null
        ? null
        : Journey1.fromJson(json['journey'] as Map<String, dynamic>),
    rows: (json['rows'] as List<dynamic>?)
        ?.map((e) => FareDetails.fromJson(e as Map<String, dynamic>))
        .toList(),
    messages: (json['messages'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FaresSectionToJson(FaresSection instance) =>
    <String, dynamic>{
      'header': instance.header,
      'index': instance.index,
      'journey': instance.journey,
      'rows': instance.rows,
      'messages': instance.messages,
    };
