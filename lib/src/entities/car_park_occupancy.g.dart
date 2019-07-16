// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car_park_occupancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarParkOccupancy _$CarParkOccupancyFromJson(Map<String, dynamic> json) {
  return CarParkOccupancy(
      id: json['id'] as String,
      bays: (json['bays'] as List)
          ?.map(
              (e) => e == null ? null : Bay.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      name: json['name'] as String,
      carParkDetailsUrl: json['carParkDetailsUrl'] as String);
}

Map<String, dynamic> _$CarParkOccupancyToJson(CarParkOccupancy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bays': instance.bays,
      'name': instance.name,
      'carParkDetailsUrl': instance.carParkDetailsUrl
    };
