// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prediction_timing.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PredictionTiming _$PredictionTimingFromJson(Map<String, dynamic> json) {
  return PredictionTiming(
      countdownServerAdjustment: json['countdownServerAdjustment'] as String,
      source: json['source'] == null
          ? null
          : DateTime.parse(json['source'] as String),
      insert: json['insert'] == null
          ? null
          : DateTime.parse(json['insert'] as String),
      read:
          json['read'] == null ? null : DateTime.parse(json['read'] as String),
      sent:
          json['sent'] == null ? null : DateTime.parse(json['sent'] as String),
      received: json['received'] == null
          ? null
          : DateTime.parse(json['received'] as String));
}

Map<String, dynamic> _$PredictionTimingToJson(PredictionTiming instance) =>
    <String, dynamic>{
      'countdownServerAdjustment': instance.countdownServerAdjustment,
      'source': instance.source?.toIso8601String(),
      'insert': instance.insert?.toIso8601String(),
      'read': instance.read?.toIso8601String(),
      'sent': instance.sent?.toIso8601String(),
      'received': instance.received?.toIso8601String()
    };
