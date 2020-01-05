import 'dart:async';

import 'package:tfl_api_client/src/entities/private_hire_operator.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('PrivateHireOperators')\]
class PrivateHireOperatorsResourceApi
    implements ResourceApi<PrivateHireOperator> {
  final ApiRequester _requester;

  PrivateHireOperatorsResourceApi(this._requester);

  /// Gets all the private hire operators.
  ///
  /// \[HttpGet\]
  @override
  Future<List<PrivateHireOperator>> get({
    double lat,
    double lon,
    String opType,
    bool wc,
    double radius,
    String name,
    int maxResults,
  }) async {
    final path = 'Cabwise/Search';

    final queryParams = <MapEntry<String, String>>[];
    if (lat != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'lat',
        lat,
      ));
    }
    if (lon != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'lon',
        lon,
      ));
    }
    if (opType != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'opType',
        opType,
      ));
    }
    if (wc != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'wc',
        wc,
      ));
    }
    if (radius != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'radius',
        radius,
      ));
    }
    if (name != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'name',
        name,
      ));
    }
    if (maxResults != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'maxResults',
        maxResults,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response['Operators']['OperatorList'] as List)
        .map((json) => PrivateHireOperator.fromJson(json))
        .toList();
  }
}
