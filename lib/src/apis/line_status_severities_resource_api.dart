import 'dart:async';

import 'package:tfl_api_client/src/entities/status_severity.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('LineStatusSeverities')\]
class LineStatusSeveritiesResourceApi implements ResourceApi<StatusSeverity> {
  final ApiRequester _requester;

  LineStatusSeveritiesResourceApi(this._requester);

  /// Gets all the line status severities.
  ///
  /// \[HttpGet\]
  @override
  Future<List<StatusSeverity>> get() async {
    final path = 'Line/Meta/Severity';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StatusSeverity.fromJson(json))
        .toList();
  }
}
