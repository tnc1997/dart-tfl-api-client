import 'dart:async';

import 'package:tfl_api_client/src/entities/road_disruption.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('RoadDisruptions')\]
class RoadDisruptionsResourceApi implements ResourceApi<RoadDisruption> {
  final ApiRequester _requester;

  RoadDisruptionsResourceApi(this._requester);

  /// Gets all the road disruptions.
  ///
  /// \[HttpGet\]
  @override
  Future<List<RoadDisruption>> get({
    List<String> severities,
    bool stripContent,
  }) async {
    final path = 'Road/all/Disruption';

    final queryParams = <MapEntry<String, String>>[];
    if (severities != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'severities',
        severities,
      ));
    }
    if (stripContent != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'stripContent',
        stripContent,
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

  /// Gets the road disruption that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<RoadDisruption> getById(
    String id, {
    bool stripContent,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Road/all/Disruption/$id';

    final queryParams = <MapEntry<String, String>>[];
    if (stripContent != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'stripContent',
        stripContent,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return RoadDisruption.fromJson(response);
  }
}
