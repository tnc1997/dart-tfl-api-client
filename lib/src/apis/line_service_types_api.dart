import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('LineServiceTypes')\]
class LineServiceTypesApi {
  final ApiRequester _requester;

  LineServiceTypesApi(this._requester);

  /// Gets all the line service types.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = 'Line/Meta/ServiceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((serviceType) => '$serviceType').toList();
  }
}
