import 'dart:async';

import 'package:tfl_api_client/src/apis/line_modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_point_modes_resource_api.dart';
import 'package:tfl_api_client/src/entities/mode.dart';
import 'package:tfl_api_client/src/entities/prediction.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

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

    final queryParams = <MapEntry<String, String>>[];
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
