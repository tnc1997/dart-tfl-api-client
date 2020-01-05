import 'dart:async';

import 'package:tfl_api_client/src/entities/charge_connector_occupancy.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('ChargeConnectorOccupancies')\]
class ChargeConnectorOccupanciesResourceApi
    implements ResourceApi<ChargeConnectorOccupancy> {
  final ApiRequester _requester;

  ChargeConnectorOccupanciesResourceApi(this._requester);

  /// Gets all the charge connector occupancies.
  ///
  /// \[HttpGet\]
  @override
  Future<List<ChargeConnectorOccupancy>> get() async {
    final path = 'Occupancy/ChargeConnector';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => ChargeConnectorOccupancy.fromJson(json))
        .toList();
  }
}
