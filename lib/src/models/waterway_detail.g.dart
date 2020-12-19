// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waterway_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WaterwayDetail _$WaterwayDetailFromJson(Map<String, dynamic> json) {
  return WaterwayDetail(
    places: (json['places'] as List<dynamic>?)
        ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
        .toList(),
    id: json['id'] as int?,
    waterwayName: json['waterwayName'] as String?,
    types: (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
    lineStrings: (json['lineStrings'] as List<dynamic>?)
        ?.map((e) => WaterwayLineString.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$WaterwayDetailToJson(WaterwayDetail instance) =>
    <String, dynamic>{
      'places': instance.places,
      'id': instance.id,
      'waterwayName': instance.waterwayName,
      'types': instance.types,
      'lineStrings': instance.lineStrings,
    };
