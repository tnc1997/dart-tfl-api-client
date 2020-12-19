import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/current_forecast.dart';

part 'london_air_forecast.g.dart';

@JsonSerializable()
class LondonAirForecast {
  String? updatePeriod;
  String? updateFrequency;
  String? forecastURL;
  String? disclaimerText;
  List<CurrentForecast>? currentForecast;

  LondonAirForecast({
    this.updatePeriod,
    this.updateFrequency,
    this.forecastURL,
    this.disclaimerText,
    this.currentForecast,
  });

  factory LondonAirForecast.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LondonAirForecastFromJson(json);

  static List<LondonAirForecast> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LondonAirForecast.fromJson(value),
          )
          .toList();

  static Map<String, LondonAirForecast> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LondonAirForecast.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LondonAirForecastToJson(this);
}
