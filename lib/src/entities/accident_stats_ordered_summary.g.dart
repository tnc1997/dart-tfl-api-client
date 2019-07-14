// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'accident_stats_ordered_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AccidentStatsOrderedSummary _$AccidentStatsOrderedSummaryFromJson(
    Map<String, dynamic> json) {
  return AccidentStatsOrderedSummary(
      year: json['year'] as int,
      borough: json['borough'] as String,
      accidents: json['accidents'] as int);
}

Map<String, dynamic> _$AccidentStatsOrderedSummaryToJson(
        AccidentStatsOrderedSummary instance) =>
    <String, dynamic>{
      'year': instance.year,
      'borough': instance.borough,
      'accidents': instance.accidents
    };
