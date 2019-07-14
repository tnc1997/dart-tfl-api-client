import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'air_quality_forecast.g.dart';

@JsonSerializable()
class AirQualityForecast implements Serializable {
  String forecastType;

  String forecastId;

  DateTime publishedDate;

  DateTime fromDate;

  DateTime toDate;

  String forecastBand;

  String forecastSummary;

  String nO2Band;

  String o3Band;

  String pM10Band;

  String pM25Band;

  String sO2Band;

  String forecastText;

  AirQualityForecast({
    this.forecastType,
    this.forecastId,
    this.publishedDate,
    this.fromDate,
    this.toDate,
    this.forecastBand,
    this.forecastSummary,
    this.nO2Band,
    this.o3Band,
    this.pM10Band,
    this.pM25Band,
    this.sO2Band,
    this.forecastText,
  });

  factory AirQualityForecast.fromJson(Map<String, dynamic> json) {
    return _$AirQualityForecastFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AirQualityForecastToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
