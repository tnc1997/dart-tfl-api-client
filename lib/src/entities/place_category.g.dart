// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'place_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PlaceCategory _$PlaceCategoryFromJson(Map<String, dynamic> json) {
  return PlaceCategory(
      category: json['category'] as String,
      availableKeys:
          (json['availableKeys'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$PlaceCategoryToJson(PlaceCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
      'availableKeys': instance.availableKeys
    };
