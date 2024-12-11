import 'dart:convert';

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/active_service_type.dart';
import '../models/prediction.dart';
import '../tfl_api_client_base.dart';

class ModeService {
  final TflApiClientContext _context;

  const ModeService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Returns the service type active for a mode. Currently only supports tube
  Future<List<ActiveServiceType>> getActiveServiceTypes() async {
    final response = await _context.client.get(
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
    final response = await _context.client.get(
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
