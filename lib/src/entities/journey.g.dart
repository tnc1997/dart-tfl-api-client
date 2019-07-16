// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Journey _$JourneyFromJson(Map<String, dynamic> json) {
  return Journey(
      startDateTime: json['startDateTime'] == null
          ? null
          : DateTime.parse(json['startDateTime'] as String),
      duration: json['duration'] as int,
      arrivalDateTime: json['arrivalDateTime'] == null
          ? null
          : DateTime.parse(json['arrivalDateTime'] as String),
      legs: (json['legs'] as List)
          ?.map(
              (e) => e == null ? null : Leg.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      fare: json['fare'] == null
          ? null
          : JourneyFare.fromJson(json['fare'] as Map<String, dynamic>));
}

Map<String, dynamic> _$JourneyToJson(Journey instance) => <String, dynamic>{
      'startDateTime': instance.startDateTime?.toIso8601String(),
      'duration': instance.duration,
      'arrivalDateTime': instance.arrivalDateTime?.toIso8601String(),
      'legs': instance.legs,
      'fare': instance.fare
    };
