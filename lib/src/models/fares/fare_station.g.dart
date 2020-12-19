// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_station.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareStation _$FareStationFromJson(Map<String, dynamic> json) {
  return FareStation(
    atcoCode: json['atcoCode'] as String?,
    commonName: json['commonName'] as String?,
    fareCategory: json['fareCategory'] as String?,
  );
}

Map<String, dynamic> _$FareStationToJson(FareStation instance) =>
    <String, dynamic>{
      'atcoCode': instance.atcoCode,
      'commonName': instance.commonName,
      'fareCategory': instance.fareCategory,
    };
