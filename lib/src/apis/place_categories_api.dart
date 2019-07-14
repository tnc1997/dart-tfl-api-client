import 'dart:async';

import '../entities/place_category.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('PlaceCategories')\]
class PlaceCategoriesApi {
  final ApiRequester _requester;

  PlaceCategoriesApi(this._requester);

  /// Gets all the place categories.
  ///
  /// \[HttpGet\]
  Future<List<PlaceCategory>> get() async {
    final path = '/Place/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => PlaceCategory.fromJson(json))
        .toList();
  }
}
