import 'dart:async';

import '../entities/charge_connector_occupancy.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('ChargeConnectors')\]
class ChargeConnectorsApi {
  final ApiRequester _requester;

  ChargeConnectorsApi(this._requester);

  /// Gets the occupancy for the charge connector that matches an [id].
  ///
  /// \[HttpGet('{id}/ChargeConnectorOccupancy')\]
  Future<ChargeConnectorOccupancy> getChargeConnectorOccupancy(
    String id,
  ) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Occupancy/ChargeConnector/$id';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => ChargeConnectorOccupancy.fromJson(json))
        .first;
  }
}
