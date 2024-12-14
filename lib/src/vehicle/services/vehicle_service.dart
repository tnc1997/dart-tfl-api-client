import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../../common/models/prediction.dart';
import '../models/vehicle_match.dart';

class VehicleService {
  final http.Client _client;

  const VehicleService({
    required http.Client client,
  }) : _client = client;

  /// Gets the predictions for a given list of vehicle Id's.
  Future<List<Prediction>> getByPathIds(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/vehicle/${ids.join(',')}/arrivals',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Prediction.fromJson(e))
        .toList();
  }

  /// Gets the Emissions Surcharge compliance for the Vehicle
  Future<VehicleMatch> getEmissionsSurchargeComplianceByQueryVrm(
    String vrm,
  ) async {
    final response = await _client.get(
      Uri.https(authority, '/vehicle/emissionsurcharge', {
        'vrm': vrm,
      }),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return VehicleMatch.fromJson(json.decode(response.body));
  }

  /// Gets the Ulez Surcharge compliance for the Vehicle
  Future<VehicleMatch> getUlezComplianceByQueryVrm(
    String vrm,
  ) async {
    final response = await _client.get(
      Uri.https(authority, '/vehicle/ulezcompliance', {
        'vrm': vrm,
      }),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return VehicleMatch.fromJson(json.decode(response.body));
  }
}
