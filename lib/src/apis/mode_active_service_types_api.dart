import 'dart:async';

import '../entities/active_service_type.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('ModeActiveServiceTypes')\]
class ModeActiveServiceTypesApi {
  final ApiRequester _requester;

  ModeActiveServiceTypesApi(this._requester);

  /// Gets all the mode active service types.
  ///
  /// \[HttpGet\]
  Future<List<ActiveServiceType>> get() async {
    final path = 'Mode/ActiveServiceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => ActiveServiceType.fromJson(json))
        .toList();
  }
}
