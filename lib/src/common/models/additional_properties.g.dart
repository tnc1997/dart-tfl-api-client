// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'additional_properties.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AdditionalProperties _$AdditionalPropertiesFromJson(Map<String, dynamic> json) {
  return AdditionalProperties(
    category: json['category'] as String?,
    key: json['key'] as String?,
    sourceSystemKey: json['sourceSystemKey'] as String?,
    value: json['value'] as String?,
    modified: json['modified'] == null
        ? null
        : DateTime.parse(json['modified'] as String),
  );
}

Map<String, dynamic> _$AdditionalPropertiesToJson(
        AdditionalProperties instance) =>
    <String, dynamic>{
      'category': instance.category,
      'key': instance.key,
      'sourceSystemKey': instance.sourceSystemKey,
      'value': instance.value,
      'modified': instance.modified?.toIso8601String(),
    };
