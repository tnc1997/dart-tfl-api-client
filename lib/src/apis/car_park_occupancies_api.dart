import 'dart:async';

import '../entities/car_park_occupancy.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('CarParkOccupancies')\]
class CarParkOccupanciesApi {
  final ApiRequester _requester;

  CarParkOccupanciesApi(this._requester);

  /// Gets all the car park occupancies.
  ///
  /// \[HttpGet\]
  Future<List<CarParkOccupancy>> get() async {
    final path = 'Occupancy/CarPark';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => CarParkOccupancy.fromJson(json))
        .toList();
  }
}
