import 'dart:async';

import '../requesters/api_requester.dart';

///
///
/// \[Route('LineDisruptionCategories')\]
class LineDisruptionCategoriesApi {
  final ApiRequester _requester;

  LineDisruptionCategoriesApi(this._requester);

  /// Gets all the line disruption categories.
  ///
  /// \[HttpGet\]
  Future<List<String>> get() async {
    final path = 'Line/Meta/DisruptionCategories';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((disruptionCategory) => '$disruptionCategory')
        .toList();
  }
}
