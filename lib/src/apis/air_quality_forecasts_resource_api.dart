import 'dart:async';

import 'package:tfl_api_client/src/entities/air_quality_forecast.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('AirQualityForecasts')\]
class AirQualityForecastsResourceApi
    implements ResourceApi<AirQualityForecast> {
  final ApiRequester _requester;

  AirQualityForecastsResourceApi(this._requester);

  /// Gets the air quality forecasts.
  ///
  ///
  /// \[HttpGet\]
  @override
  Future<List<AirQualityForecast>> get() async {
    final path = 'AirQuality';

    final response = await _requester.request(path, 'GET');

    return (response['currentForecast'] as List)
        .map((json) => AirQualityForecast.fromJson(json))
        .toList();
  }
}
