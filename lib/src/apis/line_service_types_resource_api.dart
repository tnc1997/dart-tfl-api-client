import 'dart:async';

import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('LineServiceTypes')\]
class LineServiceTypesResourceApi implements ResourceApi<String> {
  final ApiRequester _requester;

  LineServiceTypesResourceApi(this._requester);

  /// Gets all the line service types.
  ///
  /// \[HttpGet\]
  @override
  Future<List<String>> get() async {
    final path = 'Line/Meta/ServiceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((serviceType) => '$serviceType').toList();
  }
}
