// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disambiguation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disambiguation1 _$Disambiguation1FromJson(Map<String, dynamic> json) {
  return Disambiguation1(
    disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
        ?.map((e) => DisambiguationOption1.fromJson(e as Map<String, dynamic>))
        .toList(),
    matchStatus: json['matchStatus'] as String?,
  );
}

Map<String, dynamic> _$Disambiguation1ToJson(Disambiguation1 instance) =>
    <String, dynamic>{
      'disambiguationOptions': instance.disambiguationOptions,
      'matchStatus': instance.matchStatus,
    };
