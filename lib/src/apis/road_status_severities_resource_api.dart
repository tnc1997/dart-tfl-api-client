import 'dart:async';

import 'package:tfl_api_client/src/entities/status_severity.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('RoadStatusSeverities')\]
class RoadStatusSeveritiesResourceApi implements ResourceApi<StatusSeverity> {
  final ApiRequester _requester;

  RoadStatusSeveritiesResourceApi(this._requester);

  /// Gets all the road status severities.
  ///
  /// \[HttpGet\]
  @override
  Future<List<StatusSeverity>> get() async {
    final path = 'Road/Meta/Severities';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StatusSeverity.fromJson(json))
        .toList();
  }
}
