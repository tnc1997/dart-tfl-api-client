import 'dart:convert';

import 'package:tfl_api_client/src/constants/uri_constants.dart';
import 'package:tfl_api_client/src/exceptions/client_exception.dart';
import 'package:tfl_api_client/src/models/disrupted_street_segment.dart';
import 'package:tfl_api_client/src/models/road_corridor.dart';
import 'package:tfl_api_client/src/models/road_disruption.dart';
import 'package:tfl_api_client/src/models/status_severity.dart';
import 'package:tfl_api_client/src/tfl_api_client_base.dart';

class RoadService {
  final TflApiClientContext _context;

  const RoadService({
    required TflApiClientContext context,
  }) : _context = context;

  /// Gets all roads managed by TfL
  Future<List<RoadCorridor>> get() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return RoadCorridor.listFromJson(json.decode(response.body));
  }

  /// Gets the road with the specified id (e.g. A1)
  Future<List<RoadCorridor>> getByPathIds(
    List<String> ids,
  ) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/${ids.join(',')}',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return RoadCorridor.listFromJson(json.decode(response.body));
  }

  /// Gets the specified roads with the status aggregated over the date range specified, or now until the end of today if no dates are passed.
  Future<List<RoadCorridor>> statusByPathIdsQueryStartDateQueryEndDate(
    List<String> ids, [
    DateTime? startDate,
    DateTime? endDate,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/${ids.join(',')}/status',
        {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return RoadCorridor.listFromJson(json.decode(response.body));
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
    final response = await _context.client.get(
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

    ClientException.checkIsSuccessStatusCode(response);

    return RoadDisruption.listFromJson(json.decode(response.body));
  }

  /// Gets a list of disrupted streets. If no date filters are provided, current disruptions are returned.
  Future<List<DisruptedStreetSegment>>
      disruptedStreetsByQueryStartDateQueryEndDate([
    DateTime? startDate,
    DateTime? endDate,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/all/street/disruption',
        {
          if (startDate != null) 'startDate': startDate.toIso8601String(),
          if (endDate != null) 'endDate': endDate.toIso8601String(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return DisruptedStreetSegment.listFromJson(json.decode(response.body));
  }

  /// Gets a list of active disruptions filtered by disruption Ids.
  Future<List<RoadDisruption>>
      disruptionByIdByPathDisruptionIdsQueryStripContent(
    List<String> disruptionIds, [
    bool? stripContent,
  ]) async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/all/disruption/${disruptionIds.join(',')}',
        {
          if (stripContent != null) 'stripContent': stripContent.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return RoadDisruption.listFromJson(json.decode(response.body));
  }

  /// Gets a list of valid RoadDisruption categories
  Future<List<String>> metaCategories() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/meta/categories',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return (json.decode(response.body) as List)
        .map((e) => e as String)
        .toList();
  }

  /// Gets a list of valid RoadDisruption severity codes
  Future<List<StatusSeverity>> metaSeverities() async {
    final response = await _context.client.get(
      Uri.https(
        authority,
        '/road/meta/severities',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return StatusSeverity.listFromJson(json.decode(response.body));
  }
}
