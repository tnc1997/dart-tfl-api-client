import 'dart:async';

import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('StopPointTypes')\]
class StopPointTypesResourceApi implements ResourceApi<String> {
  final ApiRequester _requester;

  StopPointTypesResourceApi(this._requester);

  /// Gets all the stop point types.
  ///
  /// \[HttpGet\]
  @override
  Future<List<String>> get() async {
    final path = 'StopPoint/Meta/StopTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((stopType) => '$stopType').toList();
  }
}
