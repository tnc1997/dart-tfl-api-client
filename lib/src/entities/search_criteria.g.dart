// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_criteria.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchCriteria _$SearchCriteriaFromJson(Map<String, dynamic> json) {
  return SearchCriteria(
      dateTime: json['dateTime'] == null
          ? null
          : DateTime.parse(json['dateTime'] as String),
      dateTimeType: json['dateTimeType'] as String,
      timeAdjustments: json['timeAdjustments'] == null
          ? null
          : TimeAdjustments.fromJson(
              json['timeAdjustments'] as Map<String, dynamic>));
}

Map<String, dynamic> _$SearchCriteriaToJson(SearchCriteria instance) =>
    <String, dynamic>{
      'dateTime': instance.dateTime?.toIso8601String(),
      'dateTimeType': instance.dateTimeType,
      'timeAdjustments': instance.timeAdjustments
    };
