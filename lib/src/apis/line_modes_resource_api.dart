import 'dart:async';

import 'package:tfl_api_client/src/entities/line.dart';
import 'package:tfl_api_client/src/entities/line_disruption.dart';
import 'package:tfl_api_client/src/entities/line_route.dart';
import 'package:tfl_api_client/src/entities/line_status.dart';
import 'package:tfl_api_client/src/entities/mode.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('LineModes')\]
class LineModesResourceApi implements ResourceApi<Mode> {
  final ApiRequester _requester;

  LineModesResourceApi(this._requester);

  /// Gets all the line modes.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Mode>> get() async {
    final path = 'Line/Meta/Modes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Mode.fromJson(json)).toList();
  }

  /// Gets all the line disruptions for all the lines that match a [mode].
  ///
  /// \[HttpGet('{id}/LineDisruptions')\]
  Future<List<LineDisruption>> getLineDisruptions(String mode) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'Line/Mode/$mode/Disruption';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => LineDisruption.fromJson(json))
        .toList();
  }

  /// Gets all the routes for all the lines that match a [mode], including the name and id of the originating and terminating stops for each route.
  ///
  /// \[HttpGet('{id}/LineRoutes')\]
  Future<List<LineRoute>> getLineRoutes(
    String mode, {
    List<String> serviceTypes,
  }) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'Line/Mode/$mode/Route';

    final queryParams = <MapEntry<String, String>>[];
    if (serviceTypes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'serviceTypes',
        serviceTypes,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => Line.fromJson(json).routeSections)
        .expand((routeSections) => routeSections)
        .toList();
  }

  /// Gets all the line statuses for all the lines that match a [mode].
  ///
  /// \[HttpGet('{id}/LineStatuses')\]
  Future<List<LineStatus>> getLineStatuses(String mode) async {
    if (mode == null) throw ArgumentError.notNull('mode');

    final path = 'Line/Mode/$mode/Status';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => Line.fromJson(json).lineStatuses)
        .expand((lineStatuses) => lineStatuses)
        .toList();
  }
}
