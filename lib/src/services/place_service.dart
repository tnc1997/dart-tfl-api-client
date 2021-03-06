import 'dart:convert';

import 'package:tfl_api_client/src/constants/uri_constants.dart';
import 'package:tfl_api_client/src/exceptions/client_exception.dart';
import 'package:tfl_api_client/src/models/place.dart';
import 'package:tfl_api_client/src/models/place_category.dart';
import 'package:tfl_api_client/src/models/places_response.dart';
import 'package:tfl_api_client/src/tfl_api_client_base.dart';

class PlaceService {
  final TflApiClientContext _context;

  const PlaceService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets a list of all of the available place property categories and keys.
  Future<List<PlaceCategory>> metaCategories() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/meta/categories',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return PlaceCategory.listFromJson(json.decode(response.body));
  }

  /// Gets a list of the available types of Place.
  Future<List<String>> metaPlaceTypes() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/meta/placetypes',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets all places of a given type
  Future<List<Place>> getByTypeByPathTypesQueryActiveOnly(
    List<String> types, [
    bool? activeOnly,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/type/${types.join(',')}',
        {
          if (activeOnly != null) 'activeOnly': activeOnly.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.listFromJson(json.decode(response.body));
  }

  /// Gets the place with the given id.
  Future<Place> getByPathIdQueryIncludeChildren(
    String id, [
    bool? includeChildren,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/$id',
        {
          if (includeChildren != null)
            'includeChildren': includeChildren.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.fromJson(json.decode(response.body));
  }

  /// Gets the places that lie within a geographic region. The geographic region of interest can either be specified by using a lat/lon geo-point and a radius in metres to return places within the locus defined by the lat/lon of its centre or alternatively, by the use of a bounding box defined by the lat/lon of its north-west and south-east corners. Optionally filters on type and can strip properties for a smaller payload.
  Future<PlacesResponse>
      getByGeoPointByQueryLatQueryLonQueryRadiusQueryCategoriesQueryIncludeC(
    double lat,
    double lon, [
    double? radius,
    List<String>? categories,
    bool? includeChildren,
    List<String>? type,
    bool? activeOnly,
    int? numberOfPlacesToReturn,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place',
        {
          'lat': lat.toString(),
          'lon': lon.toString(),
          if (radius != null) 'radius': radius.toString(),
          if (categories != null) 'categories': categories.join(','),
          if (includeChildren != null)
            'includeChildren': includeChildren.toString(),
          if (type != null) 'type': type.join(','),
          if (activeOnly != null) 'activeOnly': activeOnly.toString(),
          if (numberOfPlacesToReturn != null)
            'numberOfPlacesToReturn': numberOfPlacesToReturn.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return PlacesResponse.fromJson(json.decode(response.body));
  }

  /// Gets any places of the given type whose geography intersects the given latitude and longitude. In practice this means the Place must be polygonal e.g. a BoroughBoundary.
  Future<List<Place>> getAtByPathTypePathLatPathLon(
    String type,
    double lat,
    double lon,
  ) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/${type}/at/$lat/$lon',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.listFromJson(json.decode(response.body));
  }

  /// Gets all places that matches the given query
  Future<List<Place>> searchByQueryNameQueryTypes(
    String name, [
    List<String>? types,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/place/search',
        {
          'name': name,
          if (types != null) 'types': types.join(','),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.listFromJson(json.decode(response.body));
  }
}
