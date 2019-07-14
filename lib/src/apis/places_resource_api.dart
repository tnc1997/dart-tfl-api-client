import 'dart:async';

import '../entities/place.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';
import 'place_types_resource_api.dart';

///
///
/// \[Route('Places')\]
class PlacesResourceApi implements ResourceApi<Place> {
  final ApiRequester _requester;

  PlacesResourceApi(this._requester);

  /// Gets all the places.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Place>> get({
    String type,
    double lat,
    double lon,
  }) async {
    if (type != null) {
      final path = lat != null && lon != null
          ? 'Place/$type/at/$lat/$lon'
          : 'Place/Type/$type';

      final response = await _requester.request(path, 'GET');

      return (response as List).map((json) => Place.fromJson(json)).toList();
    } else {
      final types = await PlaceTypesResourceApi(_requester).get();

      final futures = types.map((type) async {
        final path = 'Place/Type/$type';

        final response = await _requester.request(path, 'GET');

        return (response as List).map((json) => Place.fromJson(json)).toList();
      });

      final places = await Future.wait(futures);

      return places.expand((places) => places).toList();
    }
  }

  /// Gets the place that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<Place> getById(
    String id, {
    bool includeChildren,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'Place/$id';

    final queryParams = List<MapEntry<String, String>>();
    if (includeChildren != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'includeChildren',
        includeChildren,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return Place.fromJson(response);
  }

  /// Searches for places using a [name].
  ///
  /// \[HttpGet('Search')\]
  Future<List<Place>> search(
    String name, {
    String type,
  }) async {
    if (name == null) throw ArgumentError.notNull('name');

    final path = 'Place/Search';

    final queryParams = [
      ApiRequester.toQueryParam(
        'name',
        name,
      ),
    ];
    if (type != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'type',
        type,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }
}
