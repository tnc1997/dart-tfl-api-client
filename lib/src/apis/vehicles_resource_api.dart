import 'dart:async';

import 'package:tfl_api_client/src/apis/modes_resource_api.dart';

import '../entities/prediction.dart';
import '../entities/vehicle.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('Vehicles')\]
class VehiclesResourceApi implements ResourceApi<Vehicle> {
  final ApiRequester _requester;

  VehiclesResourceApi(this._requester);

  /// Gets all the vehicles.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Vehicle>> get({String mode}) async {
    Future<List<Vehicle>> request(String mode) async {
      return (await ModesResourceApi(_requester).getPredictions(mode))
          .map((prediction) => Vehicle(id: prediction.vehicleId))
          .toList();
    }

    if (mode != null) {
      return await request(mode);
    } else {
      final modes = await ModesResourceApi(_requester).get();

      final futures = modes
          .map((mode) => mode.modeName)
          .map((mode) async => await request(mode));

      final vehicles = await Future.wait(futures);

      return vehicles.expand((vehicles) => vehicles).toList();
    }
  }

  /// Gets all the arrival predictions for the vehicle that matches an [id].
  ///
  /// \[HttpGet('{id}/Predictions')\]
  Future<List<Prediction>> getPredictions(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Vehicle/$id/Arrivals';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Prediction.fromJson(json)).toList();
  }
}
