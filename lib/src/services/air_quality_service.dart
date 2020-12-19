import 'dart:convert';

import 'package:tfl_api_client/src/constants/uri_constants.dart';
import 'package:tfl_api_client/src/exceptions/client_exception.dart';
import 'package:tfl_api_client/src/models/london_air_forecast.dart';
import 'package:tfl_api_client/src/tfl_api_client_base.dart';

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
