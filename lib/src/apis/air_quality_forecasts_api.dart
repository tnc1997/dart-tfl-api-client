import 'dart:async';

import '../entities/air_quality_forecast.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('AirQualityForecasts')\]
class AirQualityForecastsApi {
  final ApiRequester _requester;

  AirQualityForecastsApi(this._requester);

  /// Gets the air quality forecasts.
  ///
  ///
  /// \[HttpGet\]
  Future<List<AirQualityForecast>> get() async {
    final path = 'AirQuality';

    final response = await _requester.request(path, 'GET');

    return (response['currentForecast'] as List)
        .map((json) => AirQualityForecast.fromJson(json))
        .toList();
  }
}
