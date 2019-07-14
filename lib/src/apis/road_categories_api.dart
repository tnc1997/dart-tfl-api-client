import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('RoadCategories')\]
class RoadCategoriesApi {
  final ApiRequester _requester;

  RoadCategoriesApi(this._requester);

  /// Gets all the road categories.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = 'Road/Meta/Categories';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((category) => '$category').toList();
  }
}
