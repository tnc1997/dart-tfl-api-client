import 'dart:async';

import '../entities/london_air_forecast.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('AirQualities')\]
class AirQualitiesApi {
  final ApiRequester _requester;

  AirQualitiesApi(this._requester);

  /// Gets the air qualities.
  ///
  ///
  /// \[HttpGet\]
  Future<LondonAirForecast> get() async {
    final path = 'AirQuality';

    final response = await _requester.request(path, 'GET');

    return LondonAirForecast.fromJson(response);
  }
}
