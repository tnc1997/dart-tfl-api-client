// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'street_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StreetResponse _$StreetResponseFromJson(Map<String, dynamic> json) {
  return StreetResponse(
    postCode: json['postCode'] as String?,
    matches: (json['matches'] as List<dynamic>?)
        ?.map((e) => StreetMatch.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$StreetResponseToJson(StreetResponse instance) =>
    <String, dynamic>{
      'postCode': instance.postCode,
      'matches': instance.matches,
    };
