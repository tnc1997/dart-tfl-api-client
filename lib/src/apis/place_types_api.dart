import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('PlaceTypes')\]
class PlaceTypesApi {
  final ApiRequester _requester;

  PlaceTypesApi(this._requester);

  /// Gets all the place types.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = '/Place/Meta/PlaceTypes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((placeType) => '$placeType').toList();
  }
}
