import 'dart:async';

import 'package:tfl_api_client/src/apis/stop_point_modes_resource_api.dart';
import 'package:tfl_api_client/src/apis/stop_point_types_resource_api.dart';
import 'package:tfl_api_client/src/entities/line_service_type.dart';
import 'package:tfl_api_client/src/entities/place.dart';
import 'package:tfl_api_client/src/entities/prediction.dart';
import 'package:tfl_api_client/src/entities/stop_point.dart';
import 'package:tfl_api_client/src/entities/stop_point_disruption.dart';
import 'package:tfl_api_client/src/entities/stop_point_route.dart';
import 'package:tfl_api_client/src/entities/stop_points_response.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('StopPoints')\]
class StopPointsResourceApi implements ResourceApi<StopPoint> {
  final ApiRequester _requester;

  StopPointsResourceApi(this._requester);

  /// Gets all the stop points.
  ///
  /// \[HttpGet\]
  @override
  Future<List<StopPoint>> get({
    String type,
    String mode,
  }) async {
    Future<List<StopPoint>> byTypeRequest(String type) async {
      final response = await _requester.request('StopPoint/Type/$type', 'GET');

      return (response as List)
          .map((json) => StopPoint.fromJson(json))
          .toList();
    }

    Future<List<StopPoint>> byModeRequest(String mode) async {
      final response = await _requester.request('StopPoint/Mode/$mode', 'GET');

      return StopPointsResponse.fromJson(response).stopPoints;
    }

    if (type != null && mode != null) {
      final byType = (await byTypeRequest(type)).toSet();

      final byMode = (await byModeRequest(mode)).toSet();

      return byType.intersection(byMode).toList();
    } else if (type != null) {
      return await byTypeRequest(type);
    } else if (mode != null) {
      return await byModeRequest(mode);
    } else {
      final byTypeFutures = (await StopPointTypesResourceApi(_requester).get())
          .map((type) async => await byTypeRequest(type));

      final byModeFutures = (await StopPointModesResourceApi(_requester).get())
          .map((mode) => mode.modeName)
          .map((mode) async => await byModeRequest(mode));

      final byType = (await Future.wait(byTypeFutures))
          .expand((stopPoints) => stopPoints)
          .toSet();

      final byMode = (await Future.wait(byModeFutures))
          .expand((stopPoints) => stopPoints)
          .toSet();

      return byType.union(byMode).toList();
    }
  }

  /// Gets the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}')\]
  Future<StopPoint> getById(
    String id, {
    bool includeCrowdingData,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id';

    final queryParams = <MapEntry<String, String>>[];
    if (includeCrowdingData != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'includeCrowdingData',
        includeCrowdingData,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return StopPoint.fromJson(response);
  }

  /// Gets the stop point that matches an [smsCode].
  ///
  /// \[HttpGet('{smsCode}')\]
  Future<StopPoint> getBySmsCode(
    String smsCode, {
    String output,
  }) async {
    if (smsCode == null) throw ArgumentError.notNull('smsCode');

    final path = 'StopPoint/Sms/$smsCode';

    final queryParams = <MapEntry<String, String>>[];
    if (output != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'output',
        output,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return StopPoint.fromJson(response);
  }

  /// Gets all the car parks for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/CarParks')\]
  Future<List<Place>> getCarParks(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id/CarParks';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }

  /// Gets the direction ("inbound" or "outbound") for the pair of stop points that match a [fromId] and a [toId].
  ///
  /// \[HttpGet('{fromId}/Direction/{toId}')\]
  Future<String> getDirection(
    String fromId,
    String toId, {
    String lineId,
  }) async {
    if (fromId == null) throw ArgumentError.notNull('fromId');
    if (toId == null) throw ArgumentError.notNull('toId');

    final path = 'StopPoint/$fromId/DirectionTo/$toId';

    final queryParams = <MapEntry<String, String>>[];
    if (lineId != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'lineId',
        lineId,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return response as String;
  }

  /// Gets all the line service types for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/LineServiceTypes')\]
  Future<List<LineServiceType>> getLineServiceTypes(
    String id, {
    List<String> lineIds,
    List<String> modes,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/ServiceTypes';

    final queryParams = [
      ApiRequester.toQueryParam(
        'id',
        id,
      ),
    ];
    if (lineIds != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'lineIds',
        lineIds,
      ));
    }
    if (modes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'modes',
        modes,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => LineServiceType.fromJson(json))
        .toList();
  }

  /// Gets all the places for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/Places')\]
  Future<List<Place>> getPlaces(
    String id,
    List<String> placeTypes,
  ) async {
    if (id == null) throw ArgumentError.notNull('id');
    if (placeTypes == null) throw ArgumentError.notNull('placeTypes');

    final path = 'StopPoint/$id/PlaceTypes';

    final queryParams = [
      ApiRequester.toQueryParam(
        'placeTypes',
        placeTypes,
      ),
    ];

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }

  /// Gets all the arrival predictions for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/Predictions')\]
  Future<List<Prediction>> getPredictions(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id/Arrivals';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Prediction.fromJson(json)).toList();
  }

  /// Gets all the stop point disruptions for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/StopPointDisruptions')\]
  Future<List<StopPointDisruption>> getStopPointDisruptions(
    String id, {
    bool getFamily,
    bool includeRouteBlockedStops,
    bool flattenResponse,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id/Disruption';

    final queryParams = <MapEntry<String, String>>[];
    if (getFamily != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'getFamily',
        getFamily,
      ));
    }
    if (includeRouteBlockedStops != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'includeRouteBlockedStops',
        includeRouteBlockedStops,
      ));
    }
    if (flattenResponse != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'flattenResponse',
        flattenResponse,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => StopPointDisruption.fromJson(json))
        .toList();
  }

  /// Gets all the stop point routes for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/StopPointRoutes')\]
  Future<List<StopPointRoute>> getStopPointRoutes(
    String id, {
    List<String> serviceTypes,
  }) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id/Route';

    final queryParams = <MapEntry<String, String>>[];
    if (serviceTypes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'serviceTypes',
        serviceTypes,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return (response as List)
        .map((json) => StopPointRoute.fromJson(json))
        .toList();
  }

  /// Gets all the taxi ranks for the stop point that matches an [id].
  ///
  /// \[HttpGet('{id}/TaxiRanks')\]
  Future<List<Place>> getTaxiRanks(String id) async {
    if (id == null) throw ArgumentError.notNull('id');

    final path = 'StopPoint/$id/TaxiRanks';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Place.fromJson(json)).toList();
  }
}
