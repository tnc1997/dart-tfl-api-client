import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'current_forecast.dart';

part 'london_air_forecast.g.dart';

@JsonSerializable()
class LondonAirForecast implements Serializable {
  String updatePeriod;

  String updateFrequency;

  String forecastUrl;

  String disclaimerText;

  List<CurrentForecast> currentForecast;

  LondonAirForecast({
    this.updatePeriod,
    this.updateFrequency,
    this.forecastUrl,
    this.disclaimerText,
    this.currentForecast,
  });

  factory LondonAirForecast.fromJson(Map<String, dynamic> json) {
    return _$LondonAirForecastFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LondonAirForecastToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
