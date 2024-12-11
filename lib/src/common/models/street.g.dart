// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Street _$StreetFromJson(Map<String, dynamic> json) {
  return Street(
    name: json['name'] as String?,
    closure: json['closure'] as String?,
    directions: json['directions'] as String?,
    segments: (json['segments'] as List<dynamic>?)
        ?.map((e) => StreetSegment.fromJson(e as Map<String, dynamic>))
        .toList(),
    sourceSystemId: json['sourceSystemId'] as int?,
    sourceSystemKey: json['sourceSystemKey'] as String?,
  );
}

Map<String, dynamic> _$StreetToJson(Street instance) => <String, dynamic>{
      'name': instance.name,
      'closure': instance.closure,
      'directions': instance.directions,
      'segments': instance.segments,
      'sourceSystemId': instance.sourceSystemId,
      'sourceSystemKey': instance.sourceSystemKey,
    };
