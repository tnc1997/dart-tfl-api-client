import 'dart:async';

import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('PlaceTypes')\]
class PlaceTypesResourceApi implements ResourceApi<String> {
  final ApiRequester _requester;

  PlaceTypesResourceApi(this._requester);

  /// Gets all the place types.
  ///
  /// \[HttpGet\]
  @override
  Future<List<String>> get() async {
    final path = '/Place/Meta/PlaceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((placeType) => '$placeType').toList();
  }
}
