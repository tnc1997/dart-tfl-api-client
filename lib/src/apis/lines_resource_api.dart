import 'dart:async';

import 'package:tfl_api_client/src/apis/line_modes_resource_api.dart';
import 'package:tfl_api_client/src/entities/line.dart';
import 'package:tfl_api_client/src/entities/line_disruption.dart';
import 'package:tfl_api_client/src/entities/line_route.dart';
import 'package:tfl_api_client/src/entities/line_status.dart';
import 'package:tfl_api_client/src/entities/prediction.dart';
import 'package:tfl_api_client/src/entities/route_sequence.dart';
import 'package:tfl_api_client/src/entities/stop_point.dart';
import 'package:tfl_api_client/src/entities/timetable_response.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('Lines')\]
class LinesResourceApi implements ResourceApi<Line> {
  final ApiRequester _requester;

  LinesResourceApi(this._requester);

  /// Gets all the lines.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Line>> get({String mode}) async {
    Future<List<Line>> request(String path) async {
      final response = await _requester.request(path, 'GET');

      return (response as List).map((json) => Line.fromJson(json)).toList();
    }

    if (mode != null) {
      return await request('Line/Mode/$mode');
    } else {
      final modes = await LineModesResourceApi(_requester).get();

      final futures = modes
          .map((mode) => mode.modeName)
          .map((mode) => 'Line/Mode/$mode')
          .map((path) async => await request(path));

      final lines = await Future.wait(futures);

      return lines.expand((lines) => lines).toList();
    }
  }

  /// Gets the line that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<Line> getById(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Line/$id';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Line.fromJson(json)).first;
  }

  /// Gets all the line disruptions for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/LineDisruptions')\]
  Future<List<LineDisruption>> getLineDisruptions(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Line/$id/Disruption';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => LineDisruption.fromJson(json))
        .toList();
  }

  /// Gets all the line routes for the line that matches an [id], including the name and id of the originating and terminating stop points for each route.
  ///
  /// \[HttpGet('{id}/LineRoutes')\]
  Future<List<LineRoute>> getLineRoutes(
    String id, {
    List<String> serviceTypes,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Line/$id/Route';

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

    return Line.fromJson(response).routeSections;
  }

  /// Gets all the line statuses for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/LineStatuses')\]
  Future<List<LineStatus>> getLineStatuses(
    String id, {
    String startDate,
    String endDate,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    var path = 'Line/$id/Status';

    if (startDate != null && endDate != null) path += '/$startDate/to/$endDate';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => Line.fromJson(json).lineStatuses)
        .expand((lineStatuses) => lineStatuses)
        .toList();
  }

  /// Gets all the arrival predictions for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/Predictions')\]
  Future<List<Prediction>> getPredictions(
    String id, {
    String stopPointId,
    String direction,
    String destinationStationId,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    var path = 'Line/$id/Arrivals';
    if (stopPointId != null) path += '/$stopPointId';

    final queryParams = <MapEntry<String, String>>[];
    if (direction != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'direction',
        direction,
      ));
    }
    if (destinationStationId != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'destinationStationId',
        destinationStationId,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Prediction.fromJson(json)).toList();
  }

  /// Gets all the route sequences for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/RouteSequences')\]
  Future<List<RouteSequence>> getRouteSequences(
    String id, {
    List<String> serviceTypes,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final queryParams = <MapEntry<String, String>>[];
    if (serviceTypes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'serviceTypes',
        serviceTypes,
      ));
    }

    final futures = ['outbound', 'inbound'].map((direction) async {
      final path = 'Line/$id/Route/Sequence/$direction';

      final response = await _requester.request(
        path,
        'GET',
        queryParams: Map.fromEntries(queryParams),
      );

      return RouteSequence.fromJson(response);
    });

    return await Future.wait(futures);
  }

  /// Gets all the stop points for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/StopPoints')\]
  Future<List<StopPoint>> getStopPoints(
    String id, {
    bool tflOperatedNationalRailStationsOnly,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Line/$id/StopPoints';

    final queryParams = <MapEntry<String, String>>[];
    if (tflOperatedNationalRailStationsOnly != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'tflOperatedNationalRailStationsOnly',
        tflOperatedNationalRailStationsOnly,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => StopPoint.fromJson(json)).toList();
  }

  /// Gets all the timetables for the line that matches an [id].
  ///
  /// \[HttpGet('{id}/Timetables')\]
  Future<TimetableResponse> getTimetables(
    String id,
    String fromStopPointId, {
    String toStopPointId,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');
    if (fromStopPointId == null) throw ArgumentError.notNull('fromStopPointId');

    var path = 'Line/$id/Timetable/$fromStopPointId';

    if (toStopPointId != null) path += 'to/$toStopPointId';

    final response = await _requester.request(path, 'GET');

    return TimetableResponse.fromJson(response);
  }
}
