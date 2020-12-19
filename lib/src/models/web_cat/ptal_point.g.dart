// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptal_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PtalPoint _$PtalPointFromJson(Map<String, dynamic> json) {
  return PtalPoint(
    ptalValue: json['ptalValue'] as String?,
    latitude: (json['latitude'] as num?)?.toDouble(),
    longitude: (json['longitude'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$PtalPointToJson(PtalPoint instance) => <String, dynamic>{
      'ptalValue': instance.ptalValue,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
