import 'dart:convert';

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/london_air_forecast.dart';
import '../tfl_api_client_base.dart';

class AirQualityService {
  final TflApiClientContext _context;

  const AirQualityService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets air quality data feed
  Future<LondonAirForecast> get() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/airquality',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return LondonAirForecast.fromJson(json.decode(response.body));
  }
}
