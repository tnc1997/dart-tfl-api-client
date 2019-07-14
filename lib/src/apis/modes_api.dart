import 'dart:async';

import '../entities/prediction.dart';
import '../entities/stop_point.dart';
import '../entities/stop_point_disruption.dart';
import '../entities/stop_points_response.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('Modes')\]
class ModesApi {
  final ApiRequester _requester;

  ModesApi(this._requester);

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

  /// Gets all the stop point disruptions that match a [mode].
  ///
  /// \[HttpGet('{id}/StopPointDisruptions')\]
  Future<List<StopPointDisruption>> getStopPointDisruptions(
    String mode, {
    bool includeRouteBlockedStops,
  }) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'StopPoint/Mode/$mode/Disruption';

    final queryParams = List<MapEntry<String, String>>();
    if (includeRouteBlockedStops != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'includeRouteBlockedStops',
        includeRouteBlockedStops,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => StopPointDisruption.fromJson(json))
        .toList();
  }

  /// Gets all the stop points that match a [mode].
  Future<List<StopPoint>> getStopPoints(
    String mode, {
    int page,
  }) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'StopPoint/Mode/$mode';

    final queryParams = List<MapEntry<String, String>>();
    if (page != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'page',
        page,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return StopPointsResponse.fromJson(response).stopPoints;
  }
}
