import 'dart:async';

import '../entities/prediction.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('Vehicles')\]
class VehiclesApi {
  final ApiRequester _requester;

  VehiclesApi(this._requester);

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
