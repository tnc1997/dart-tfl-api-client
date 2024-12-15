import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../../common/models/disruption.dart';
import '../../common/models/line.dart';
import '../../common/models/mode.dart';
import '../../common/models/prediction.dart';
import '../../common/models/status_severity.dart';
import '../../common/models/stop_point.dart';
import '../models/route_search_response.dart';
import '../models/route_sequence.dart';
import '../models/timetable_response.dart';

class LineService {
  final http.Client _client;

  const LineService({
    required http.Client client,
  }) : _client = client;

  /// Gets a list of valid modes
  Future<List<Mode>> metaModes() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/meta/modes',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Mode.fromJson(e))
        .toList();
  }

  /// Gets a list of valid severity codes
  Future<List<StatusSeverity>> metaSeverity() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/meta/severity',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StatusSeverity.fromJson(e))
        .toList();
  }

  /// Gets a list of valid disruption categories
  Future<List<String>> metaDisruptionCategories() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/meta/disruptioncategories',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets a list of valid ServiceTypes to filter on
  Future<List<String>> metaServiceTypes() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/meta/servicetypes',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets lines that match the specified line ids.
  Future<List<Line>> get(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Gets lines that serve the given modes.
  Future<List<Line>> getByMode(
    List<String> modes,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/mode/${modes.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Get all valid routes for all lines, including the name and id of the originating and terminating stops for each route.
  Future<List<Line>> route({
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/route',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Get all valid routes for given line ids, including the name and id of the originating and terminating stops for each route.
  Future<List<Line>> lineRoutesByIds(
    List<String> ids, {
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/route',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return ids.length == 1
        ? [Line.fromJson(json.decode(response.body))]
        : (json.decode(response.body) as List<dynamic>)
            .map((e) => Line.fromJson(e))
            .toList();
  }

  /// Gets all lines and their valid routes for given modes, including the name and id of the originating and terminating stops for each route
  Future<List<Line>> routeByMode(
    List<String> modes, {
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/mode/${modes.join(',')}/route',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Gets all valid routes for given line id, including the sequence of stops on each route.
  Future<RouteSequence> routeSequence(
    String id,
    String direction, {
    List<String>? serviceTypes,
    bool? excludeCrowding,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/$id/route/sequence/$direction',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
          if (excludeCrowding != null)
            'excludeCrowding': excludeCrowding.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return RouteSequence.fromJson(json.decode(response.body));
  }

  /// Gets the line status for given line ids during the provided dates e.g Minor Delays
  Future<List<Line>> status(
    List<String> ids,
    DateTime startDate,
    DateTime endDate, {
    bool? detail,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/status/${startDate.year}-${startDate.month}-${startDate.day}/to/${endDate.year}-${endDate.month}-${endDate.day}',
        {
          if (detail != null) 'detail': detail.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Gets the line status of for given line ids e.g Minor Delays
  Future<List<Line>> statusByIds(
    List<String> ids, {
    bool? detail,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/status',
        {
          if (detail != null) 'detail': detail.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Search for lines or routes matching the query string
  Future<RouteSearchResponse> search(
    String query, {
    List<String>? modes,
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/search/$query',
        {
          if (modes != null) 'modes': modes.join(','),
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return RouteSearchResponse.fromJson(json.decode(response.body));
  }

  /// Gets the line status for all lines with a given severity A list of valid severity codes can be obtained from a call to Line/Meta/Severity
  Future<List<Line>> statusBySeverity(
    int severity,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/status/$severity',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Gets the line status of for all lines for the given modes
  Future<List<Line>> statusByMode(
    List<String> modes, {
    bool? detail,
    String? severityLevel,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/mode/${modes.join(',')}/status',
        {
          if (detail != null) 'detail': detail.toString(),
          if (severityLevel != null) 'severityLevel': severityLevel,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Line.fromJson(e))
        .toList();
  }

  /// Gets a list of the stations that serve the given line id
  Future<List<StopPoint>> stopPoints(
    String id, {
    bool? tflOperatedNationalRailStationsOnly,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/$id/stoppoints',
        {
          if (tflOperatedNationalRailStationsOnly != null)
            'tflOperatedNationalRailStationsOnly':
                tflOperatedNationalRailStationsOnly.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPoint.fromJson(e))
        .toList();
  }

  /// Gets the timetable for a specified station on the give line
  Future<TimetableResponse> timetable(
    String fromStopPointId,
    String id,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/$id/timetable/$fromStopPointId',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return TimetableResponse.fromJson(json.decode(response.body));
  }

  /// Gets the timetable for a specified station on the give line with specified destination
  Future<TimetableResponse> timetableTo(
    String fromStopPointId,
    String id,
    String toStopPointId,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/$id/timetable/$fromStopPointId/to/$toStopPointId',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return TimetableResponse.fromJson(json.decode(response.body));
  }

  /// Get disruptions for the given line ids
  Future<List<Disruption>> disruption(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/disruption',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Disruption.fromJson(e))
        .toList();
  }

  /// Get disruptions for all lines of the given modes.
  Future<List<Disruption>> disruptionByMode(
    List<String> modes,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/mode/${modes.join(',')}/disruption',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Disruption.fromJson(e))
        .toList();
  }

  /// Get the list of arrival predictions for given line ids based at the given stop
  Future<List<Prediction>> arrivalsWithStopPoint(
    List<String> ids,
    String stopPointId, {
    String? direction,
    String? destinationStationId,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/arrivals/$stopPointId',
        {
          if (direction != null) 'direction': direction,
          if (destinationStationId != null)
            'destinationStationId': destinationStationId,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Prediction.fromJson(e))
        .toList();
  }

  /// Get the list of arrival predictions for given line ids based at the given stop
  Future<List<Prediction>> arrivals(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/line/${ids.join(',')}/arrivals',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Prediction.fromJson(e))
        .toList();
  }
}
