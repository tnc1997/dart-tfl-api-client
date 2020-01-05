import 'dart:async';

import 'package:tfl_api_client/src/apis/car_park_occupancies_resource_api.dart';
import 'package:tfl_api_client/src/entities/bay.dart';
import 'package:tfl_api_client/src/entities/car_park_occupancy.dart';
import 'package:tfl_api_client/src/entities/place.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('CarParks')\]
class CarParksResourceApi implements ResourceApi<Place> {
  final ApiRequester _requester;

  CarParksResourceApi(this._requester);

  /// Gets all the car parks.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Place>> get() async {
    Place mapper(CarParkOccupancy carParkOccupancy) {
      return Place(
        commonName: carParkOccupancy.name,
        id: carParkOccupancy.id,
        url: carParkOccupancy.carParkDetailsUrl,
      );
    }

    return (await CarParkOccupanciesResourceApi(_requester).get())
        .map(mapper)
        .toList();
  }

  /// Gets all the bays for the car park that matches an [id].
  ///
  /// \[HttpGet('{id}/Bays')\]
  Future<List<Bay>> getBays(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Occupancy/CarPark/$id';

    final response = await _requester.request(path, 'GET');

    return CarParkOccupancy.fromJson(response).bays;
  }
}
