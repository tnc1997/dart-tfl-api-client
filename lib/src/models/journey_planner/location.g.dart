// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    name: json['name'] as String?,
    region: json['region'] as String?,
    deleteAssignedStops: json['deleteAssignedStops'] as bool?,
    placeDefaultText: json['placeDefaultText'] as String?,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'deleteAssignedStops': instance.deleteAssignedStops,
      'placeDefaultText': instance.placeDefaultText,
    };
