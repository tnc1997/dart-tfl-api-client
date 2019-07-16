// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_geography.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DbGeography _$DbGeographyFromJson(Map<String, dynamic> json) {
  return DbGeography(
      geography: json['geography'] == null
          ? null
          : DbGeographyWellKnownValue.fromJson(
              json['geography'] as Map<String, dynamic>));
}

Map<String, dynamic> _$DbGeographyToJson(DbGeography instance) =>
    <String, dynamic>{'geography': instance.geography};
