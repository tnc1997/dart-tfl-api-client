import 'dart:async';

import '../entities/car_park_occupancy.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('CarParkOccupancies')\]
class CarParkOccupanciesResourceApi implements ResourceApi<CarParkOccupancy> {
  final ApiRequester _requester;

  CarParkOccupanciesResourceApi(this._requester);

  /// Gets all the car park occupancies.
  ///
  /// \[HttpGet\]
  @override
  Future<List<CarParkOccupancy>> get() async {
    final path = 'Occupancy/CarPark';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => CarParkOccupancy.fromJson(json))
        .toList();
  }
}
