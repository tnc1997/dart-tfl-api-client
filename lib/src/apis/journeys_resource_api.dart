import 'dart:async';

import 'package:tfl_api_client/src/entities/itinerary_result.dart';
import 'package:tfl_api_client/src/entities/journey.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('Journeys')\]
class JourneysResourceApi implements ResourceApi<Journey> {
  final ApiRequester _requester;

  JourneysResourceApi(this._requester);

  /// Gets all the journeys.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Journey>> get({
    String from,
    String to,
    String via,
    bool nationalSearch,
    String date,
    String time,
    String timeIs,
    String journeyPreference,
    List<String> mode,
    List<String> accessibilityPreference,
    String fromName,
    String toName,
    String viaName,
    String maxTransferMinutes,
    String maxWalkingMinutes,
    String walkingSpeed,
    String cyclePreference,
    String adjustment,
    List<String> bikeProficiency,
    bool alternativeCycle,
    bool alternativeWalking,
    bool applyHtmlMarkup,
    bool useMultiModalCall,
    bool walkingOptimization,
    bool taxiOnlyTrip,
  }) async {
    if (from == null || to == null) return <Journey>[];

    final path = 'Journey/JourneyResults/$from/to/$to';

    final queryParams = <MapEntry<String, String>>[];
    if (via != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'via',
        via,
      ));
    }
    if (nationalSearch != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'nationalSearch',
        nationalSearch,
      ));
    }
    if (date != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'date',
        date,
      ));
    }
    if (time != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'time',
        time,
      ));
    }
    if (timeIs != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'timeIs',
        timeIs,
      ));
    }
    if (journeyPreference != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'journeyPreference',
        journeyPreference,
      ));
    }
    if (mode != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'mode',
        mode,
      ));
    }
    if (accessibilityPreference != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'accessibilityPreference',
        accessibilityPreference,
      ));
    }
    if (fromName != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'fromName',
        fromName,
      ));
    }
    if (toName != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'toName',
        toName,
      ));
    }
    if (viaName != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'viaName',
        viaName,
      ));
    }
    if (maxTransferMinutes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'maxTransferMinutes',
        maxTransferMinutes,
      ));
    }
    if (maxWalkingMinutes != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'maxWalkingMinutes',
        maxWalkingMinutes,
      ));
    }
    if (walkingSpeed != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'walkingSpeed',
        walkingSpeed,
      ));
    }
    if (cyclePreference != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'cyclePreference',
        cyclePreference,
      ));
    }
    if (adjustment != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'adjustment',
        adjustment,
      ));
    }
    if (bikeProficiency != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'bikeProficiency',
        bikeProficiency,
      ));
    }
    if (alternativeCycle != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'alternativeCycle',
        alternativeCycle,
      ));
    }
    if (alternativeWalking != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'alternativeWalking',
        alternativeWalking,
      ));
    }
    if (applyHtmlMarkup != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'applyHtmlMarkup',
        applyHtmlMarkup,
      ));
    }
    if (useMultiModalCall != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'useMultiModalCall',
        useMultiModalCall,
      ));
    }
    if (walkingOptimization != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'walkingOptimization',
        walkingOptimization,
      ));
    }
    if (taxiOnlyTrip != null) {
      queryParams.add(ApiRequester.toQueryParam(
        'taxiOnlyTrip',
        taxiOnlyTrip,
      ));
    }

    final response = await _requester.request(
      path,
      'GET',
      queryParams: Map.fromEntries(queryParams),
    );

    return ItineraryResult.fromJson(response).journeys;
  }
}
