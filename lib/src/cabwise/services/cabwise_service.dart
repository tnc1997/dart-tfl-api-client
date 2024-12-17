import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../models/cabwise_wrapper.dart';

class CabwiseService {
  final http.Client _client;

  const CabwiseService({
    required http.Client client,
  }) : _client = client;

  /// Search for taxis and minicabs contact information.
  Future<CabwiseWrapper> search(
    double lat,
    double lon, {
    String? optype,
    String? wc,
    double? radius,
    String? name,
    int? maxResults,
    bool? twentyFourSevenOnly,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/cabwise/search',
        {
          'lat': lat,
          'lon': lon,
          if (optype != null) 'optype': optype,
          if (wc != null) 'wc': wc,
          if (radius != null) 'radius': radius,
          if (name != null) 'name': name,
          if (maxResults != null) 'maxResults': maxResults,
          if (twentyFourSevenOnly != null)
            'twentyFourSevenOnly': twentyFourSevenOnly,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return CabwiseWrapper.fromJson(json.decode(response.body));
  }
}
