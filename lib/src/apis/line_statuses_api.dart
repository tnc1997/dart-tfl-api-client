import 'dart:async';

import '../entities/line.dart';
import '../entities/line_status.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('LineStatuses')\]
class LineStatusesApi {
  final ApiRequester _requester;

  LineStatusesApi(this._requester);

  /// Gets all the line statuses that match a [severity].
  ///
  /// \[HttpGet('{severity}')\]
  Future<List<LineStatus>> getBySeverity(int severity) async {
    if (severity == null) throw ArgumentError.notNull('severity');

    final path = 'Line/Status/$severity';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => Line.fromJson(json).lineStatuses)
        .expand((lineStatuses) => lineStatuses)
        .toList();
  }
}
