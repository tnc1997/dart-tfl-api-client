// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_cat_location_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WebCatLocationInformation _$WebCatLocationInformationFromJson(
    Map<String, dynamic> json) {
  return WebCatLocationInformation(
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    borough: json['borough'] as String?,
    insideGla: json['insideGla'] as bool?,
    easting: (json['easting'] as num?)?.toDouble(),
    northing: (json['northing'] as num?)?.toDouble(),
    address: json['address'] as String?,
    name: json['name'] as String?,
    placeId: json['placeId'] as String?,
  );
}

Map<String, dynamic> _$WebCatLocationInformationToJson(
        WebCatLocationInformation instance) =>
    <String, dynamic>{
      'lat': instance.lat,
      'lon': instance.lon,
      'borough': instance.borough,
      'insideGla': instance.insideGla,
      'easting': instance.easting,
      'northing': instance.northing,
      'address': instance.address,
      'name': instance.name,
      'placeId': instance.placeId,
    };
