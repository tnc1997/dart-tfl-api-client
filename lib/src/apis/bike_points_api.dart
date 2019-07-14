import 'dart:async';

import '../entities/bike_point_occupancy.dart';
import '../entities/place.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('BikePoints')\]
class BikePointsApi {
  final ApiRequester _requester;

  BikePointsApi(this._requester);

  /// Gets all the bike points.
  ///
  /// \[HttpGet\]
  Future<List<Place>> get() async {
    final path = 'BikePoint';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }

  /// Gets the occupancy for the bike point that matches an [id].
  ///
  /// \[HttpGet('{id}/BikePointOccupancy')\]
  Future<BikePointOccupancy> getBikePointOccupancy(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Occupancy/BikePoints/$id';

    final response = await _requester.request(path, 'GET');

    return (response as List)
        .map((json) => BikePointOccupancy.fromJson(json))
        .first;
  }

  /// Gets the bike point that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<Place> getById(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'BikePoint/$id';

    final response = await _requester.request(path, 'GET');

    return Place.fromJson(response);
  }

  /// Searches for bike points using a [query].
  ///
  /// \[HttpGet('Search')\]
  Future<List<Place>> search(String query) async {
    if (query == null) throw ArgumentError.notNull('query');

    final path = 'BikePoint/Search';

    final queryParams = [
      ApiRequester.toQueryParam(
        'query',
        query,
      ),
    ];

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }
}
