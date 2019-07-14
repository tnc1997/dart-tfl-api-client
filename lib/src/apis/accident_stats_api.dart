import 'dart:async';

import '../entities/accident_detail.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('AccidentStats')\]
class AccidentStatsApi {
  final ApiRequester _requester;

  AccidentStatsApi(this._requester);

  /// Gets all the accident details that occurred in a [year].
  ///
  /// \[HttpGet('{year}')\]
  Future<List<AccidentDetail>> getByYear(int year) async {
    if (year == null) throw ArgumentError.notNull('year');

    final path = 'AccidentStats/$year';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => AccidentDetail.fromJson(json))
        .toList();
  }
}
