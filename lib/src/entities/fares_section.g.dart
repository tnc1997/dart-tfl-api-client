// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fares_section.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaresSection _$FaresSectionFromJson(Map<String, dynamic> json) {
  return FaresSection(
      header: json['header'] as String,
      index: json['index'] as int,
      rows: (json['rows'] as List)
          ?.map((e) => e == null
              ? null
              : FareDetails.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      messages: (json['messages'] as List)
          ?.map((e) =>
              e == null ? null : Message.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$FaresSectionToJson(FaresSection instance) =>
    <String, dynamic>{
      'header': instance.header,
      'index': instance.index,
      'rows': instance.rows,
      'messages': instance.messages
    };
