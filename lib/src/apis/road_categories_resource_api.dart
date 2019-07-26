import 'dart:async';

import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('RoadCategories')\]
class RoadCategoriesResourceApi implements ResourceApi<String> {
  final ApiRequester _requester;

  RoadCategoriesResourceApi(this._requester);

  /// Gets all the road categories.
  ///
  /// \[HttpGet\]
  @override
  Future<List<String>> get() async {
    final path = 'Road/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((category) => '$category').toList();
  }
}
