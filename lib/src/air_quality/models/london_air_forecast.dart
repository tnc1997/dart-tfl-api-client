﻿import 'current_forecast.dart';

class LondonAirForecast {
  String? updatePeriod;
  String? updateFrequency;
  String? forecastUrl;
  String? disclaimerText;
  List<CurrentForecast>? currentForecast;

  LondonAirForecast({
    this.updatePeriod,
    this.updateFrequency,
    this.forecastUrl,
    this.disclaimerText,
    this.currentForecast,
  });

  factory LondonAirForecast.fromJson(
    Map<String, dynamic> json,
  ) {
    return LondonAirForecast(
      updatePeriod: json['updatePeriod'] as String?,
      updateFrequency: json['updateFrequency'] as String?,
      forecastUrl: json['forecastURL'] as String?,
      disclaimerText: json['disclaimerText'] as String?,
      currentForecast: (json['currentForecast'] as List<dynamic>?)
          ?.map((e) => CurrentForecast.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'updatePeriod': updatePeriod,
      'updateFrequency': updateFrequency,
      'forecastURL': forecastUrl,
      'disclaimerText': disclaimerText,
      'currentForecast': currentForecast,
    };
  }
}
