import 'dart:async';

import 'package:tfl_api_client/src/apis/line_status_severities_resource_api.dart';
import 'package:tfl_api_client/src/entities/line.dart';
import 'package:tfl_api_client/src/entities/line_status.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

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
