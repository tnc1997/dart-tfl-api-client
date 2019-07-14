import 'dart:async';

import '../entities/car_park_occupancy.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('CarParks')\]
class CarParksApi {
  final ApiRequester _requester;

  CarParksApi(this._requester);

  /// Gets the occupancy for the car park that matches an [id].
  ///
  /// \[HttpGet('{id}/CarParkOccupancy')\]
  Future<CarParkOccupancy> getCarParkOccupancy(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Occupancy/CarPark/$id';

    final response = await _requester.request(path, 'GET');

    return CarParkOccupancy.fromJson(response);
  }
}
