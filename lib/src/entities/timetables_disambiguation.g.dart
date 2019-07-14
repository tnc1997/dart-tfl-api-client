// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'timetables_disambiguation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimetablesDisambiguation _$TimetablesDisambiguationFromJson(
    Map<String, dynamic> json) {
  return TimetablesDisambiguation(
      disambiguationOptions: (json['disambiguationOptions'] as List)
          ?.map((e) => e == null
              ? null
              : TimetablesDisambiguationOption.fromJson(
                  e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$TimetablesDisambiguationToJson(
        TimetablesDisambiguation instance) =>
    <String, dynamic>{'disambiguationOptions': instance.disambiguationOptions};
