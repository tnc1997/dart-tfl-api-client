import 'dart:convert';

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/place.dart';
import '../tfl_api_client_base.dart';

class BikePointService {
  final TflApiClientContext _context;

  const BikePointService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets all bike point locations. The Place object has an addtionalProperties array which contains the nbBikes, nbDocks and nbSpaces numbers which give the status of the BikePoint. A mismatch in these numbers i.e. nbDocks - (nbBikes + nbSpaces) != 0 indicates broken docks.
  Future<List<Place>> getAll() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/bikepoint',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.listFromJson(json.decode(response.body));
  }

  /// Gets the bike point with the given id.
  Future<Place> get(
    String id,
  ) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/bikepoint/$id',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.fromJson(json.decode(response.body));
  }

  /// Search for bike stations by their name, a bike point's name often contains information about the name of the street or nearby landmarks, for example. Note that the search result does not contain the PlaceProperties i.e. the status or occupancy of the BikePoint, to get that information you should retrieve the BikePoint by its id on /BikePoint/id.
  Future<List<Place>> search(
    String query,
  ) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/bikepoint/search',
        {
          'query': query,
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Place.listFromJson(json.decode(response.body));
  }
}
