// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'london_air_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LondonAirForecast _$LondonAirForecastFromJson(Map<String, dynamic> json) {
  return LondonAirForecast(
    updatePeriod: json['updatePeriod'] as String?,
    updateFrequency: json['updateFrequency'] as String?,
    forecastURL: json['forecastURL'] as String?,
    disclaimerText: json['disclaimerText'] as String?,
    currentForecast: (json['currentForecast'] as List<dynamic>?)
        ?.map((e) => CurrentForecast.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LondonAirForecastToJson(LondonAirForecast instance) =>
    <String, dynamic>{
      'updatePeriod': instance.updatePeriod,
      'updateFrequency': instance.updateFrequency,
      'forecastURL': instance.forecastURL,
      'disclaimerText': instance.disclaimerText,
      'currentForecast': instance.currentForecast,
    };
