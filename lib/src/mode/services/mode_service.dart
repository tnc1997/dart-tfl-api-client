import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/client_exception.dart';
import '../../common/models/prediction.dart';
import '../models/active_service_type.dart';

class ModeService {
  final http.Client _client;

  const ModeService({
    required http.Client client,
  }) : _client = client;

  /// Returns the service type active for a mode. Currently only supports tube
  Future<List<ActiveServiceType>> getActiveServiceTypes() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/mode/activeservicetypes',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ActiveServiceType.listFromJson(json.decode(response.body));
  }

  /// Gets the next arrival predictions for all stops of a given mode
  Future<List<Prediction>> arrivals(
    String mode, [
    int? count,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/mode/$mode/arrivals',
        {
          if (count != null) 'count': count.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Prediction.listFromJson(json.decode(response.body));
  }
}
