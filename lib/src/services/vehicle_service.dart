import 'dart:convert';

import 'package:tfl_api_client/src/constants/uri_constants.dart';
import 'package:tfl_api_client/src/exceptions/client_exception.dart';
import 'package:tfl_api_client/src/models/prediction.dart';
import 'package:tfl_api_client/src/models/vehicle_match.dart';
import 'package:tfl_api_client/src/tfl_api_client_base.dart';

class VehicleService {
  final TflApiClientContext _context;

  const VehicleService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets the predictions for a given list of vehicle Id's.
  Future<List<Prediction>> getByPathIds(
    List<String> ids,
  ) async {
    final response = await _context.client.get(
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
    final response = await _context.client.get(
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
    final response = await _context.client.get(
      Uri.https(authority, '/vehicle/ulezcompliance', {
        'vrm': vrm,
      }),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return VehicleMatch.fromJson(json.decode(response.body));
  }
}
