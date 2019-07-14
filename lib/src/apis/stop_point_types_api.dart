import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointTypes')\]
class StopPointTypesApi {
  final ApiRequester _requester;

  StopPointTypesApi(this._requester);

  /// Gets all the stop point types.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = 'StopPoint/Meta/StopTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((stopType) => '$stopType').toList();
  }
}
