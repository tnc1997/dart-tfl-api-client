import 'dart:async';

import 'package:tfl_api_client/src/apis/charge_connector_occupancies_resource_api.dart';
import 'package:tfl_api_client/src/entities/additional_properties.dart';
import 'package:tfl_api_client/src/entities/charge_connector_occupancy.dart';
import 'package:tfl_api_client/src/entities/place.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

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
