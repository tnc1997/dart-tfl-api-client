import 'dart:async';

import '../entities/charge_connector_occupancy.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('ChargeConnectorOccupancies')\]
class ChargeConnectorOccupanciesApi {
  final ApiRequester _requester;

  ChargeConnectorOccupanciesApi(this._requester);

  /// Gets all the charge connector occupancies.
  ///
  /// \[HttpGet\]
  Future<List<ChargeConnectorOccupancy>> get() async {
    final path = 'Occupancy/ChargeConnector';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => ChargeConnectorOccupancy.fromJson(json))
        .toList();
  }
}
