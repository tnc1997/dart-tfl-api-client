// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accident_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccidentDetail _$AccidentDetailFromJson(Map<String, dynamic> json) {
  return AccidentDetail(
      id: json['id'] as int,
      lat: (json['lat'] as num)?.toDouble(),
      lon: (json['lon'] as num)?.toDouble(),
      location: json['location'] as String,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      severity: json['severity'] as String,
      borough: json['borough'] as String,
      casualties: (json['casualties'] as List)
          ?.map((e) =>
              e == null ? null : Casualty.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      vehicles: (json['vehicles'] as List)
          ?.map((e) =>
              e == null ? null : Vehicle.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$AccidentDetailToJson(AccidentDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'lat': instance.lat,
      'lon': instance.lon,
      'location': instance.location,
      'date': instance.date?.toIso8601String(),
      'severity': instance.severity,
      'borough': instance.borough,
      'casualties': instance.casualties,
      'vehicles': instance.vehicles
    };
