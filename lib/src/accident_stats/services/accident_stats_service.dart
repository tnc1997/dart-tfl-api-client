import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/client_exception.dart';
import '../models/accident_detail.dart';

class AccidentStatsService {
  final http.Client _client;

  const AccidentStatsService({
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

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => AccidentDetail.fromJson(e))
        .toList();
  }
}
