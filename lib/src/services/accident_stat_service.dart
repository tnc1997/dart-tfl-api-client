import 'dart:convert';

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/accident_stats/accident_detail.dart';
import '../tfl_api_client_base.dart';

class AccidentStatService {
  final TflApiClientContext _context;

  const AccidentStatService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets all accident details for accidents occuring in the specified year
  Future<List<AccidentDetail>> get(
    int year,
  ) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/accidentstats/$year',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return AccidentDetail.listFromJson(json.decode(response.body));
  }
}
