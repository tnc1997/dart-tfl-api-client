import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../models/network_status.dart';

class NetworkStatusService {
  final http.Client _client;

  const NetworkStatusService({
    required http.Client client,
  }) : _client = client;

  /// Gets the network status.
  Future<NetworkStatus> get() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/networkstatus',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return NetworkStatus.fromJson(json.decode(response.body));
  }
}
