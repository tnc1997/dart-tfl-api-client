import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../models/bike_point_occupancy.dart';
import '../models/car_park_occupancy.dart';
import '../models/charge_connector_occupancy.dart';

class OccupancyService {
  final http.Client _client;

  const OccupancyService({
    required http.Client client,
  }) : _client = client;

  /// Gets the occupancy for all car parks that have occupancy data
  Future<List<CarParkOccupancy>> get() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/carpark',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => CarParkOccupancy.fromJson(e))
        .toList();
  }

  /// Gets the occupancy for all charge connectors
  Future<List<ChargeConnectorOccupancy>> getAllChargeConnectorStatus() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/chargeconnector',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => ChargeConnectorOccupancy.fromJson(e))
        .toList();
  }

  /// Gets the occupancy for a car park with a given id
  Future<CarParkOccupancy> getByPathId(
    String id,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/carpark/$id',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return CarParkOccupancy.fromJson(json.decode(response.body));
  }

  /// Gets the occupancy for a charge connectors with a given id (sourceSystemPlaceId)
  Future<List<ChargeConnectorOccupancy>> getChargeConnectorStatusByPathIds(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/chargeconnector/${ids.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => ChargeConnectorOccupancy.fromJson(e))
        .toList();
  }

  /// Get the occupancy for bike points.
  Future<List<BikePointOccupancy>> getBikePointsOccupanciesByPathIds(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/bikepoints/${ids.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => BikePointOccupancy.fromJson(e))
        .toList();
  }
}
