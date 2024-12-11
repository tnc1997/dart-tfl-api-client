import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
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

    ClientException.checkIsSuccessStatusCode(response);

    return CarParkOccupancy.listFromJson(json.decode(response.body));
  }

  /// Gets the occupancy for all charge connectors
  Future<List<ChargeConnectorOccupancy>> getAllChargeConnectorStatus() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/occupancy/chargeconnector',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ChargeConnectorOccupancy.listFromJson(json.decode(response.body));
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

    ClientException.checkIsSuccessStatusCode(response);

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

    ClientException.checkIsSuccessStatusCode(response);

    return ChargeConnectorOccupancy.listFromJson(json.decode(response.body));
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

    ClientException.checkIsSuccessStatusCode(response);

    return BikePointOccupancy.listFromJson(json.decode(response.body));
  }
}
