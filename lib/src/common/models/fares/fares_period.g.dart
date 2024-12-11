// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fares_period.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FaresPeriod _$FaresPeriodFromJson(Map<String, dynamic> json) {
  return FaresPeriod(
    id: json['id'] as int?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    viewableDate: json['viewableDate'] == null
        ? null
        : DateTime.parse(json['viewableDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    isFuture: json['isFuture'] as bool?,
  );
}

Map<String, dynamic> _$FaresPeriodToJson(FaresPeriod instance) =>
    <String, dynamic>{
      'id': instance.id,
      'startDate': instance.startDate?.toIso8601String(),
      'viewableDate': instance.viewableDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'isFuture': instance.isFuture,
    };
