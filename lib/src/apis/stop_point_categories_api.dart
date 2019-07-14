import 'dart:async';

import '../entities/stop_point_category.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointCategories')\]
class StopPointCategoriesApi {
  final ApiRequester _requester;

  StopPointCategoriesApi(this._requester);

  /// Gets all the stop point additional information categories.
  ///
  /// \[HttpGet\]
  Future<List<StopPointCategory>> get() async {
    final path = 'StopPoint/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StopPointCategory.fromJson(json))
        .toList();
  }
}
