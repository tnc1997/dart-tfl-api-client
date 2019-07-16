import 'dart:async';

import '../entities/active_service_type.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('ModeActiveServiceTypes')\]
class ModeActiveServiceTypesResourceApi
    implements ResourceApi<ActiveServiceType> {
  final ApiRequester _requester;

  ModeActiveServiceTypesResourceApi(this._requester);

  /// Gets all the mode active service types.
  ///
  /// \[HttpGet\]
  @override
  Future<List<ActiveServiceType>> get() async {
    final path = 'Mode/ActiveServiceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => ActiveServiceType.fromJson(json))
        .toList();
  }
}
