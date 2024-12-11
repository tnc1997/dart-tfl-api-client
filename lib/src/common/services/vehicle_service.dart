import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/prediction.dart';
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

    ClientException.checkIsSuccessStatusCode(response);

    return Prediction.listFromJson(json.decode(response.body));
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

    ClientException.checkIsSuccessStatusCode(response);

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

    ClientException.checkIsSuccessStatusCode(response);

    return VehicleMatch.fromJson(json.decode(response.body));
  }
}