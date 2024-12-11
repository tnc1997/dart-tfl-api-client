// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_adjustments.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TimeAdjustments _$TimeAdjustmentsFromJson(Map<String, dynamic> json) {
  return TimeAdjustments(
    earliest: json['earliest'] == null
        ? null
        : TimeAdjustment.fromJson(json['earliest'] as Map<String, dynamic>),
    earlier: json['earlier'] == null
        ? null
        : TimeAdjustment.fromJson(json['earlier'] as Map<String, dynamic>),
    later: json['later'] == null
        ? null
        : TimeAdjustment.fromJson(json['later'] as Map<String, dynamic>),
    latest: json['latest'] == null
        ? null
        : TimeAdjustment.fromJson(json['latest'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$TimeAdjustmentsToJson(TimeAdjustments instance) =>
    <String, dynamic>{
      'earliest': instance.earliest,
      'earlier': instance.earlier,
      'later': instance.later,
      'latest': instance.latest,
    };
