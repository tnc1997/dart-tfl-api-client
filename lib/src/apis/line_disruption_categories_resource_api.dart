import 'dart:async';

import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('LineDisruptionCategories')\]
class LineDisruptionCategoriesResourceApi implements ResourceApi<String> {
  final ApiRequester _requester;

  LineDisruptionCategoriesResourceApi(this._requester);

  /// Gets all the line disruption categories.
  ///
  /// \[HttpGet\]
  @override
  Future<List<String>> get() async {
    final path = 'Line/Meta/DisruptionCategories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((disruptionCategory) => '$disruptionCategory')
        .toList();
  }
}
