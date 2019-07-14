import 'dart:async';

import '../entities/line.dart';
import '../entities/line_status.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';
import 'line_status_severities_resource_api.dart';

///
///
/// \[Route('LineStatuses')\]
class LineStatusesResourceApi implements ResourceApi<LineStatus> {
  final ApiRequester _requester;

  LineStatusesResourceApi(this._requester);

  /// Gets all the line statuses.
  ///
  /// \[HttpGet\]
  @override
  Future<List<LineStatus>> get({int severity}) async {
    Future<List<LineStatus>> request(String path) async {
      final response = await _requester.request(path, 'GET');

      return (response as List)
          .map((json) => Line.fromJson(json).lineStatuses)
          .expand((lineStatuses) => lineStatuses)
          .toList();
    }

    if (severity != null) {
      return await request('Line/Status/$severity');
    } else {
      final severities =
          await LineStatusSeveritiesResourceApi(_requester).get();

      final futures = severities
          .map((severity) => 'Line/Status/${severity.severityLevel}')
          .map((path) async => await request(path));

      final lineStatuses = await Future.wait(futures);

      return lineStatuses.expand((lineStatuses) => lineStatuses).toList();
    }
  }
}
