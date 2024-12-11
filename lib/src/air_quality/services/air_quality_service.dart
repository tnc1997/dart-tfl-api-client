import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/client_exception.dart';
import '../models/london_air_forecast.dart';

class AirQualityService {
  final http.Client _client;

  const AirQualityService({
    required http.Client client,
  }) : _client = client;

  /// Gets air quality data feed
  Future<LondonAirForecast> get() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/airquality',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return LondonAirForecast.fromJson(json.decode(response.body));
  }
}
