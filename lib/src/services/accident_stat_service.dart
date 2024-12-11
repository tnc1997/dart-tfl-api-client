import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/accident_stats/accident_detail.dart';

class AccidentStatService {
  final http.Client _client;

  const AccidentStatService({
    required http.Client client,
  }) : _client = client;

  /// Gets all accident details for accidents occuring in the specified year
  Future<List<AccidentDetail>> get(
    int year,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/accidentstats/$year',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return AccidentDetail.listFromJson(json.decode(response.body));
  }
}
