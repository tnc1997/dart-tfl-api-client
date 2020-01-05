import 'dart:async';

import 'package:tfl_api_client/src/entities/place_category.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('PlaceCategories')\]
class PlaceCategoriesResourceApi implements ResourceApi<PlaceCategory> {
  final ApiRequester _requester;

  PlaceCategoriesResourceApi(this._requester);

  /// Gets all the place categories.
  ///
  /// \[HttpGet\]
  @override
  Future<List<PlaceCategory>> get() async {
    final path = '/Place/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => PlaceCategory.fromJson(json))
        .toList();
  }
}
