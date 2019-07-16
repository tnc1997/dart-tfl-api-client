import 'dart:async';

import '../entities/stop_point_category.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointCategories')\]
class StopPointCategoriesResourceApi implements ResourceApi<StopPointCategory> {
  final ApiRequester _requester;

  StopPointCategoriesResourceApi(this._requester);

  /// Gets all the stop point additional information categories.
  ///
  /// \[HttpGet\]
  @override
  Future<List<StopPointCategory>> get() async {
    final path = 'StopPoint/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => StopPointCategory.fromJson(json))
        .toList();
  }
}
