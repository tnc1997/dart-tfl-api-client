// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bike_point_occupancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BikePointOccupancy _$BikePointOccupancyFromJson(Map<String, dynamic> json) {
  return BikePointOccupancy(
    id: json['id'] as String?,
    name: json['name'] as String?,
    bikesCount: json['bikesCount'] as int?,
    emptyDocks: json['emptyDocks'] as int?,
    totalDocks: json['totalDocks'] as int?,
  );
}

Map<String, dynamic> _$BikePointOccupancyToJson(BikePointOccupancy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'bikesCount': instance.bikesCount,
      'emptyDocks': instance.emptyDocks,
      'totalDocks': instance.totalDocks,
    };
