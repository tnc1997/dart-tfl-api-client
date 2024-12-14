import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../common/constants/uri_constants.dart';
import '../../common/exceptions/tfl_api_client_exception.dart';
import '../../common/models/status_severity.dart';
import '../models/disrupted_street_segment.dart';
import '../models/road_corridor.dart';
import '../models/road_disruption.dart';

class RoadService {
  final http.Client _client;

  const RoadService({
    required http.Client client,
  }) : _client = client;

  /// Gets all roads managed by TfL
  Future<List<RoadCorridor>> get() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => RoadCorridor.fromJson(e))
        .toList();
  }

  /// Gets the road with the specified id (e.g. A1)
  Future<List<RoadCorridor>> getByPathIds(
    List<String> ids,
  ) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/${ids.join(',')}',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => RoadCorridor.fromJson(e))
        .toList();
  }

  /// Gets the specified roads with the status aggregated over the date range specified, or now until the end of today if no dates are passed.
  Future<List<RoadCorridor>> statusByPathIdsQueryStartDateQueryEndDate(
    List<String> ids, [
    DateTime? startDate,
    DateTime? endDate,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/${ids.join(',')}/status',
        {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => RoadCorridor.fromJson(e))
        .toList();
  }

  /// Get active disruptions, filtered by road ids
  Future<List<RoadDisruption>>
      disruptionByPathIdsQueryStripContentQuerySeveritiesQueryCategoriesQuery(
    List<String> ids, [
    bool? stripContent,
    List<String>? severities,
    List<String>? categories,
    bool? closures,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/${ids.join(',')}/disruption',
        {
          if (stripContent != null) 'stripContent': stripContent.toString(),
          if (severities != null) 'severities': severities.join(','),
          if (categories != null) 'categories': categories.join(','),
          if (closures != null) 'closures': closures.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => RoadDisruption.fromJson(e))
        .toList();
  }

  /// Gets a list of disrupted streets. If no date filters are provided, current disruptions are returned.
  Future<List<DisruptedStreetSegment>>
      disruptedStreetsByQueryStartDateQueryEndDate([
    DateTime? startDate,
    DateTime? endDate,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/all/street/disruption',
        {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => DisruptedStreetSegment.fromJson(e))
        .toList();
  }

  /// Gets a list of active disruptions filtered by disruption Ids.
  Future<List<RoadDisruption>>
      disruptionByIdByPathDisruptionIdsQueryStripContent(
    List<String> disruptionIds, [
    bool? stripContent,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/all/disruption/${disruptionIds.join(',')}',
        {
          if (stripContent != null) 'stripContent': stripContent.toString(),
        },
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => RoadDisruption.fromJson(e))
        .toList();
  }

  /// Gets a list of valid RoadDisruption categories
  Future<List<String>> metaCategories() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/meta/categories',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets a list of valid RoadDisruption severity codes
  Future<List<StatusSeverity>> metaSeverities() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/road/meta/severities',
      ),
    );

    TflApiClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List<dynamic>)
        .map((e) => StatusSeverity.fromJson(e))
        .toList();
  }
}
