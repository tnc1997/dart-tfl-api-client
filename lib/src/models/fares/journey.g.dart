// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'journey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Journey1 _$Journey1FromJson(Map<String, dynamic> json) {
  return Journey1(
    fromStation: json['fromStation'] == null
        ? null
        : FareStation.fromJson(json['fromStation'] as Map<String, dynamic>),
    toStation: json['toStation'] == null
        ? null
        : FareStation.fromJson(json['toStation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$Journey1ToJson(Journey1 instance) => <String, dynamic>{
      'fromStation': instance.fromStation,
      'toStation': instance.toStation,
    };
