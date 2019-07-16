// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'validity_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ValidityPeriod _$ValidityPeriodFromJson(Map<String, dynamic> json) {
  return ValidityPeriod(
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      isNow: json['isNow'] as bool);
}

Map<String, dynamic> _$ValidityPeriodToJson(ValidityPeriod instance) =>
    <String, dynamic>{
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'isNow': instance.isNow
    };
