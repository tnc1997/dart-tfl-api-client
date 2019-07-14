import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointStopTypes')\]
class StopPointStopTypesApi {
  final ApiRequester _requester;

  StopPointStopTypesApi(this._requester);

  /// Gets all the stop point stop types.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = 'StopPoint/Meta/StopTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((stopType) => '$stopType').toList();
  }
}
