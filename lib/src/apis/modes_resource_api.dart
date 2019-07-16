import 'dart:async';

import '../entities/mode.dart';
import '../entities/prediction.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';
import 'line_modes_resource_api.dart';
import 'stop_point_modes_resource_api.dart';

///
///
/// \[Route('Modes')\]
class ModesResourceApi implements ResourceApi<Mode> {
  final ApiRequester _requester;

  ModesResourceApi(this._requester);

  /// Gets all the modes.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Mode>> get() async {
    final lineModes = await LineModesResourceApi(_requester).get();
    final stopPointModes = await StopPointModesResourceApi(_requester).get();

    return lineModes.toSet().union(stopPointModes.toSet()).toList();
  }

  /// Gets all the arrival predictions for all the stop points that match a [mode].
  ///
  /// \[HttpGet('{id}/Predictions')\]
  Future<List<Prediction>> getPredictions(
    String mode, {
    int count,
  }) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'Mode/$mode/Arrivals';

    final queryParams = List<MapEntry<String, String>>();
    if (count != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'count',
        count,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Prediction.fromJson(json)).toList();
  }
}
