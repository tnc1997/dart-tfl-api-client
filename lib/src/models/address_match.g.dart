// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddressMatch _$AddressMatchFromJson(Map<String, dynamic> json) {
  return AddressMatch(
    id: json['id'] as String?,
    url: json['url'] as String?,
    name: json['name'] as String?,
    lat: (json['lat'] as num?)?.toDouble(),
    lon: (json['lon'] as num?)?.toDouble(),
    addressLineOne: json['addressLineOne'] as String?,
    addressLineTwo: json['addressLineTwo'] as String?,
    addressLineThree: json['addressLineThree'] as String?,
    town: json['town'] as String?,
    county: json['county'] as String?,
    postCode: json['postCode'] as String?,
    country: json['country'] as String?,
    buildingNumber: json['buildingNumber'] as String?,
    subBuildingNumber: json['subBuildingNumber'] as String?,
    buildingName: json['buildingName'] as String?,
  );
}

Map<String, dynamic> _$AddressMatchToJson(AddressMatch instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'name': instance.name,
      'lat': instance.lat,
      'lon': instance.lon,
      'addressLineOne': instance.addressLineOne,
      'addressLineTwo': instance.addressLineTwo,
      'addressLineThree': instance.addressLineThree,
      'town': instance.town,
      'county': instance.county,
      'postCode': instance.postCode,
      'country': instance.country,
      'buildingNumber': instance.buildingNumber,
      'subBuildingNumber': instance.subBuildingNumber,
      'buildingName': instance.buildingName,
    };
