// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityForecast _$AirQualityForecastFromJson(Map<String, dynamic> json) {
  return AirQualityForecast(
      forecastType: json['forecastType'] as String,
      forecastId: json['forecastId'] as String,
      publishedDate: json['publishedDate'] == null
          ? null
          : DateTime.parse(json['publishedDate'] as String),
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      forecastBand: json['forecastBand'] as String,
      forecastSummary: json['forecastSummary'] as String,
      nO2Band: json['nO2Band'] as String,
      o3Band: json['o3Band'] as String,
      pM10Band: json['pM10Band'] as String,
      pM25Band: json['pM25Band'] as String,
      sO2Band: json['sO2Band'] as String,
      forecastText: json['forecastText'] as String);
}

Map<String, dynamic> _$AirQualityForecastToJson(AirQualityForecast instance) =>
    <String, dynamic>{
      'forecastType': instance.forecastType,
      'forecastId': instance.forecastId,
      'publishedDate': instance.publishedDate?.toIso8601String(),
      'fromDate': instance.fromDate?.toIso8601String(),
      'toDate': instance.toDate?.toIso8601String(),
      'forecastBand': instance.forecastBand,
      'forecastSummary': instance.forecastSummary,
      'nO2Band': instance.nO2Band,
      'o3Band': instance.o3Band,
      'pM10Band': instance.pM10Band,
      'pM25Band': instance.pM25Band,
      'sO2Band': instance.sO2Band,
      'forecastText': instance.forecastText
    };
