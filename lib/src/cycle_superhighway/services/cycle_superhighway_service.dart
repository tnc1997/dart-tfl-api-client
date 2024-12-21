import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../models/cycle_superhighway.dart';

class CycleSuperhighwayService {
  final http.Client _client;

  const CycleSuperhighwayService({
    required http.Client client,
  }) : _client = client;

  /// Gets all cycle superhighways.
  Future<List<CycleSuperhighway>> getAll() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/cyclesuperhighway',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => CycleSuperhighway.fromJson(e))
        .toList();
  }

  /// Gets the cycle superhighway with the given id.
  Future<CycleSuperhighway> get(
    String id,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/cyclesuperhighway/$id',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    if (json.decode(response.body) == null) {
      throw TflApiClientException(
        timestampUtc: DateTime.now().toUtc(),
        exceptionType: 'EntityNotFoundException',
        httpStatusCode: 404,
        relativeUri: '/CycleSuperhighway/$id',
        message: 'The following cycle superhighway id is not recognised: $id',
      );
    }

    return CycleSuperhighway.fromJson(json.decode(response.body));
  }
}
