import 'dart:async';

import '../entities/status_severity.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('LineStatusSeverities')\]
class LineStatusSeveritiesApi {
  final ApiRequester _requester;

  LineStatusSeveritiesApi(this._requester);

  /// Gets all the line status severities.
  ///
  /// \[HttpGet\]
  Future<List<StatusSeverity>> get() async {
    final path = 'Line/Meta/Severity';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StatusSeverity.fromJson(json))
        .toList();
  }
}
