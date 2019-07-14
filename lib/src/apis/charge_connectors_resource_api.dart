import 'dart:async';

import '../entities/additional_properties.dart';
import '../entities/charge_connector_occupancy.dart';
import '../entities/place.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';
import 'charge_connector_occupancies_resource_api.dart';

///
///
/// \[Route('ChargeConnectors')\]
class ChargeConnectorsResourceApi implements ResourceApi<Place> {
  final ApiRequester _requester;

  ChargeConnectorsResourceApi(this._requester);

  /// Gets all the charge connectors.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Place>> get() async {
    Place mapper(ChargeConnectorOccupancy chargeConnectorOccupancy) {
      return Place(
        commonName: chargeConnectorOccupancy.sourceSystemPlaceId,
        id: chargeConnectorOccupancy.id.toString(),
        additionalProperties: [
          AdditionalProperties(
            key: 'status',
            value: chargeConnectorOccupancy.status,
          ),
        ],
      );
    }

    return (await ChargeConnectorOccupanciesResourceApi(_requester).get())
        .map(mapper)
        .toList();
  }
}
