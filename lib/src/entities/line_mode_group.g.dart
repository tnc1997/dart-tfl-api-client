// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line_mode_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LineModeGroup _$LineModeGroupFromJson(Map<String, dynamic> json) {
  return LineModeGroup(
      modeName: json['modeName'] as String,
      lineIdentifier:
          (json['lineIdentifier'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$LineModeGroupToJson(LineModeGroup instance) =>
    <String, dynamic>{
      'modeName': instance.modeName,
      'lineIdentifier': instance.lineIdentifier
    };
