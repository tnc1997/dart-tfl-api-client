import 'dart:async';

import 'package:tfl_api_client/src/entities/road.dart';
import 'package:tfl_api_client/src/entities/road_disruption.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('Roads')\]
class RoadsResourceApi implements ResourceApi<Road> {
  final ApiRequester _requester;

  RoadsResourceApi(this._requester);

  /// Gets all the roads that are managed by TfL.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Road>> get() async {
    final path = 'Road';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Road.fromJson(json)).toList();
  }

  /// Gets the road that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<Road> getById(String id) async {
    if (id == null) throw ArgumentError.notNull('ids');

    final path = 'Road/$id';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Road.fromJson(json)).first;
  }

  /// Gets all the road disruptions for the road that matches an [id].
  ///
  /// \[HttpGet('{id}/RoadDisruptions')\]
  Future<List<RoadDisruption>> getRoadDisruptions(
    String id, {
    bool stripContent,
    List<String> severities,
    List<String> categories,
    bool closures,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Road/$id/Disruption';

    final queryParams = <MapEntry<String, String>>[];
    if (stripContent != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'stripContent',
        stripContent,
      ));
    }
    if (severities != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'severities',
        severities,
      ));
    }
    if (categories != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'categories',
        categories,
      ));
    }
    if (closures != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'closures',
        closures,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => RoadDisruption.fromJson(json))
        .toList();
  }

  /// Gets all the road statuses for the road that matches an [id] aggregated over the date range specified, or now until the end of today if no dates are specified.
  ///
  /// \[HttpGet('{id}/RoadStatuses')\]
  Future<List<Road>> getRoadStatuses(
    String id, {
    DateTime startDate,
    DateTime endDate,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Road/$id/Status';

    final queryParams = <MapEntry<String, String>>[];
    if (startDate != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'startDate',
        startDate,
      ));
    }
    if (endDate != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'endDate',
        endDate,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Road.fromJson(json)).toList();
  }
}
