import 'dart:async';

import '../entities/line.dart';
import '../entities/line_route.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('LineRoutes')\]
class LineRoutesResourceApi implements ResourceApi<LineRoute> {
  final ApiRequester _requester;

  LineRoutesResourceApi(this._requester);

  /// Gets all the line routes.
  ///
  /// \[HttpGet\]
  @override
  Future<List<LineRoute>> get({List<String> serviceTypes}) async {
    final path = 'Line/Route';

    final queryParams = List<MapEntry<String, String>>();
    if (serviceTypes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'serviceTypes',
        serviceTypes,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => Line.fromJson(json).routeSections)
        .expand((routeSection) => routeSection)
        .toList();
  }
}
