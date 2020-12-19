import 'package:json_annotation/json_annotation.dart';

part 'current_forecast.g.dart';

@JsonSerializable()
class CurrentForecast {
  String? forecastText;
  String? forecastType;
  String? forecastID;
  DateTime? publishedDate;
  DateTime? fromDate;
  DateTime? toDate;
  String? forecastBand;
  String? forecastSummary;
  String? nO2Band;
  String? o3Band;
  String? pM10Band;
  String? pM25Band;
  String? sO2Band;

  CurrentForecast({
    this.forecastText,
    this.forecastType,
    this.forecastID,
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
  });

  factory CurrentForecast.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CurrentForecastFromJson(json);

  static List<CurrentForecast> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CurrentForecast.fromJson(value),
          )
          .toList();

  static Map<String, CurrentForecast> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CurrentForecast.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CurrentForecastToJson(this);
}
