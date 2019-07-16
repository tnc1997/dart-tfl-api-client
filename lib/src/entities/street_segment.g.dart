// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_segment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreetSegment _$StreetSegmentFromJson(Map<String, dynamic> json) {
  return StreetSegment(
      toid: json['toid'] as String,
      lineString: json['lineString'] as String,
      sourceSystemId: json['sourceSystemId'] as int,
      sourceSystemKey: json['sourceSystemKey'] as String);
}

Map<String, dynamic> _$StreetSegmentToJson(StreetSegment instance) =>
    <String, dynamic>{
      'toid': instance.toid,
      'lineString': instance.lineString,
      'sourceSystemId': instance.sourceSystemId,
      'sourceSystemKey': instance.sourceSystemKey
    };
