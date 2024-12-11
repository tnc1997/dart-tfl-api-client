import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/client_exception.dart';
import '../../common/models/place.dart';

class BikePointService {
  final http.Client _client;

  const BikePointService({
    required http.Client client,
  }) : _client = client;

  /// Gets all bike point locations. The Place object has an addtionalProperties array which contains the nbBikes, nbDocks and nbSpaces numbers which give the status of the BikePoint. A mismatch in these numbers i.e. nbDocks - (nbBikes + nbSpaces) != 0 indicates broken docks.
  Future<List<Place>> getAll() async {
    final response = await _client.get(
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
    final response = await _client.get(
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
    final response = await _client.get(
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
