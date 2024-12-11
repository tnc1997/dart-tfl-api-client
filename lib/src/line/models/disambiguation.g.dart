// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'disambiguation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Disambiguation2 _$Disambiguation2FromJson(Map<String, dynamic> json) {
  return Disambiguation2(
    disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
        ?.map((e) => DisambiguationOption2.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$Disambiguation2ToJson(Disambiguation2 instance) =>
    <String, dynamic>{
      'disambiguationOptions': instance.disambiguationOptions,
    };
