import 'dart:async';

import '../entities/mode.dart';
import '../entities/stop_point_disruption.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointModes')\]
class StopPointModesResourceApi implements ResourceApi<Mode> {
  final ApiRequester _requester;

  StopPointModesResourceApi(this._requester);

  /// Gets all the stop point modes.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Mode>> get() async {
    final path = 'StopPoint/Meta/Modes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Mode.fromJson(json)).toList();
  }

  /// Gets all the stop point disruptions for all the stop points that match a [mode].
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
}
