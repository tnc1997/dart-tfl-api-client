// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stop_point_category.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StopPointCategory _$StopPointCategoryFromJson(Map<String, dynamic> json) {
  return StopPointCategory(
    category: json['category'] as String?,
    availableKeys: (json['availableKeys'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$StopPointCategoryToJson(StopPointCategory instance) =>
    <String, dynamic>{
      'category': instance.category,
      'availableKeys': instance.availableKeys,
    };
