import 'dart:async';

import '../entities/status_severity.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('RoadStatusSeverities')\]
class RoadStatusSeveritiesApi {
  final ApiRequester _requester;

  RoadStatusSeveritiesApi(this._requester);

  /// Gets all the road status severities.
  ///
  /// \[HttpGet\]
  Future<List<StatusSeverity>> get() async {
    final path = 'Road/Meta/Severities';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StatusSeverity.fromJson(json))
        .toList();
  }
}
