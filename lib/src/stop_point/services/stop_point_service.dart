import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../../common/models/mode.dart';
import '../../common/models/place.dart';
import '../../common/models/prediction.dart';
import '../../common/models/search_response.dart';
import '../../common/models/stop_point.dart';
import '../models/arrival_departure.dart';
import '../models/disrupted_point.dart';
import '../models/fares_section.dart';
import '../models/line_service_type.dart';
import '../models/stop_point_category.dart';
import '../models/stop_point_route_section.dart';
import '../models/stop_points_response.dart';

class StopPointService {
  final http.Client _client;

  const StopPointService({
    required http.Client client,
  }) : _client = client;

  /// Gets the list of available StopPoint additional information categories
  Future<List<StopPointCategory>> metaCategories() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/meta/categories',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPointCategory.fromJson(e))
        .toList();
  }

  /// Gets the list of available StopPoint types
  Future<List<String>> metaStopTypes() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/meta/stoptypes',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets the list of available StopPoint modes
  Future<List<Mode>> metaModes() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/meta/modes',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Mode.fromJson(e))
        .toList();
  }

  /// Gets a list of StopPoints corresponding to the given list of stop ids.
  Future<List<StopPoint>> get(
    List<String> ids, {
    bool? includeCrowdingData,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/${ids.join(',')}',
        {
          if (includeCrowdingData != null)
            'includeCrowdingData': includeCrowdingData.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return ids.length == 1
        ? [StopPoint.fromJson(json.decode(response.body))]
        : (json.decode(response.body) as List<dynamic>)
            .map((e) => StopPoint.fromJson(e))
            .toList();
  }

  /// Get a list of places corresponding to a given id and place types.
  Future<List<Place>> getPlaceTypes(
    String id,
    List<String> placeTypes,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/placetypes',
        {
          'placeTypes': placeTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Place.fromJson(e))
        .toList();
  }

  /// Gets all the Crowding data (static) for the StopPointId, plus crowding data for a given line and optionally a particular direction.
  Future<StopPoint> crowding(
    String id,
    String line,
    String direction,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/crowding/$line',
        {
          'direction': direction,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return StopPoint.fromJson(json.decode(response.body));
  }

  /// Gets all stop points of a given type
  Future<List<StopPoint>> getByType(
    List<String> types,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/type/${types.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPoint.fromJson(e))
        .toList();
  }

  /// Gets all the stop points of given type(s) with a page number
  Future<List<StopPoint>> getByTypeWithPagination(
    List<String> types,
    int page,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/type/${types.join(',')}/page/$page',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPoint.fromJson(e))
        .toList();
  }

  /// Gets the service types for a given stoppoint
  Future<List<LineServiceType>> getServiceTypes(
    String id, {
    List<String>? lineIds,
    List<String>? modes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/servicetypes',
        {
          'id': id,
          if (lineIds != null) 'lineIds': lineIds.join(','),
          if (modes != null) 'modes': modes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => LineServiceType.fromJson(e))
        .toList();
  }

  /// Gets the list of arrival predictions for the given stop point id
  Future<List<Prediction>> arrivals(
    String id,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/arrivals',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Prediction.fromJson(e))
        .toList();
  }

  /// Gets the list of arrival and departure predictions for the given stop point id (overground and tfl rail only)
  Future<List<ArrivalDeparture>> arrivalDepartures(
    String id,
    List<String> lineIds,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/arrivaldepartures',
        {
          'lineIds': lineIds.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => ArrivalDeparture.fromJson(e))
        .toList();
  }

  /// Gets Stopoints that are reachable from a station/line combination.
  Future<List<StopPoint>> reachableFrom(
    String id,
    String lineId, {
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/canreachonline/$lineId',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPoint.fromJson(e))
        .toList();
  }

  /// Returns the route sections for all the lines that service the given stop point ids
  Future<List<StopPointRouteSection>> route(
    String id, {
    List<String>? serviceTypes,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/route',
        {
          if (serviceTypes != null) 'serviceTypes': serviceTypes.join(','),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StopPointRouteSection.fromJson(e))
        .toList();
  }

  /// Gets a distinct list of disrupted stop points for the given modes
  Future<List<DisruptedPoint>> disruptionByMode(
    List<String> modes, {
    bool? includeRouteBlockedStops,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/mode/${modes.join(',')}/disruption',
        {
          if (includeRouteBlockedStops != null)
            'includeRouteBlockedStops': includeRouteBlockedStops.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => DisruptedPoint.fromJson(e))
        .toList();
  }

  /// Gets all disruptions for the specified StopPointId, plus disruptions for any child Naptan records it may have.
  Future<List<DisruptedPoint>> disruption(
    List<String> ids, {
    bool? getFamily,
    bool? includeRouteBlockedStops,
    bool? flattenResponse,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/${ids.join(',')}/disruption',
        {
          if (getFamily != null) 'getFamily': getFamily.toString(),
          if (includeRouteBlockedStops != null)
            'includeRouteBlockedStops': includeRouteBlockedStops.toString(),
          if (flattenResponse != null)
            'flattenResponse': flattenResponse.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => DisruptedPoint.fromJson(e))
        .toList();
  }

  /// Returns the canonical direction, "inbound" or "outbound", for a given pair of stop point Ids in the direction from -> to.
  Future<String> direction(
    String id,
    String toStopPointId, {
    String? lineId,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/directionto/$toStopPointId',
        {
          if (lineId != null) 'lineId': lineId,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return json.decode(response.body) as String;
  }

  /// Returns the fare for a given pair of stop point Ids in the direction from -> to.
  Future<List<FaresSection>> fare(
    String id,
    String toStopPointId,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$id/fareto/$toStopPointId',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => FaresSection.fromJson(e))
        .toList();
  }

  /// Gets a list of StopPoints within {radius} by the specified criteria
  Future<StopPointsResponse> getByGeoPoint(
    List<String> stopTypes,
    double lat,
    double lon, {
    int? radius,
    bool? useStopPointHierarchy,
    List<String>? modes,
    List<String>? categories,
    bool? returnLines,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint',
        {
          'stopTypes': stopTypes.join(','),
          'lat': lat.toString(),
          'lon': lon.toString(),
          if (radius != null) 'radius': radius.toString(),
          if (useStopPointHierarchy != null)
            'useStopPointHierarchy': useStopPointHierarchy.toString(),
          if (modes != null) 'modes': modes.join(','),
          if (categories != null) 'categories': categories.join(','),
          if (returnLines != null) 'returnLines': returnLines.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return StopPointsResponse.fromJson(json.decode(response.body));
  }

  /// Gets a list of StopPoints filtered by the modes available at that StopPoint.
  Future<StopPointsResponse> getByMode(
    List<String> modes, {
    int? page,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/mode/${modes.join(',')}',
        {
          if (page != null) 'page': page.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return StopPointsResponse.fromJson(json.decode(response.body));
  }

  /// Search StopPoints by their common name, or their 5-digit Countdown Bus Stop Code.
  Future<SearchResponse> search(
    String query, {
    List<String>? modes,
    bool? faresOnly,
    int? maxResults,
    List<String>? lines,
    bool? includeHubs,
    bool? tflOperatedNationalRailStationsOnly,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/search',
        {
          'query': query,
          if (modes != null) 'modes': modes.join(','),
          if (faresOnly != null) 'faresOnly': faresOnly.toString(),
          if (maxResults != null) 'maxResults': maxResults.toString(),
          if (lines != null) 'lines': lines.join(','),
          if (includeHubs != null) 'includeHubs': includeHubs.toString(),
          if (tflOperatedNationalRailStationsOnly != null)
            'tflOperatedNationalRailStationsOnly':
                tflOperatedNationalRailStationsOnly.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return SearchResponse.fromJson(json.decode(response.body));
  }

  /// Gets a StopPoint for a given sms code.
  Future<StopPoint> getBySms(
    String id, {
    String? output,
  }) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/sms/$id',
        {
          if (output != null) 'output': output,
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return StopPoint.fromJson(json.decode(response.body));
  }

  /// Gets a list of taxi ranks corresponding to the given stop point id.
  Future<List<Place>> getTaxiRanksById(
    String stopPointId,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$stopPointId/taxiranks',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Place.fromJson(e))
        .toList();
  }

  /// Get car parks corresponding to the given stop point id.
  Future<List<Place>> getCarParksById(
    String stopPointId,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/stoppoint/$stopPointId/carparks',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => Place.fromJson(e))
        .toList();
  }
}
