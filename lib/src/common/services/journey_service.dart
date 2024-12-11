import 'dart:convert';

import 'package:http/http.dart' as http;

import '../constants/uri_constants.dart';
import '../exceptions/client_exception.dart';
import '../models/journey_planner/itinerary_result.dart';
import '../models/mode.dart';

class JourneyService {
  final http.Client _client;

  const JourneyService({
    required http.Client client,
  }) : _client = client;

  /// Gets a list of all of the available journey planner modes
  Future<List<Mode>> meta() async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/journey/meta/modes',
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return Mode.listFromJson(json.decode(response.body));
  }

  /// Perform a Journey Planner search from the parameters specified in simple types
  Future<ItineraryResult>
      journeyResultsByPathFromPathToQueryViaQueryNationalSearchQueryDateQu(
    String from,
    String to, [
    String? via,
    bool? nationalSearch,
    String? date,
    String? time,
    String? timeIs,
    String? journeyPreference,
    List<String>? mode,
    List<String>? accessibilityPreference,
    String? fromName,
    String? toName,
    String? viaName,
    String? maxTransferMinutes,
    String? maxWalkingMinutes,
    String? walkingSpeed,
    String? cyclePreference,
    String? adjustment,
    List<String>? bikeProficiency,
    bool? alternativeCycle,
    bool? alternativeWalking,
    bool? applyHtmlMarkup,
    bool? useMultiModalCall,
    bool? walkingOptimization,
    bool? taxiOnlyTrip,
    bool? routeBetweenEntrances,
    bool? useRealTimeLiveArrivals,
  ]) async {
    final response = await _client.get(
      Uri.https(
        authority,
        '/journey/journeyresults/$from/to/$to',
        {
          if (via != null) 'via': via,
          if (nationalSearch != null)
            'nationalSearch': nationalSearch.toString(),
          if (date != null) 'date': date,
          if (time != null) 'time': time,
          if (timeIs != null) 'timeIs': timeIs,
          if (journeyPreference != null) 'journeyPreference': journeyPreference,
          if (mode != null) 'mode': mode.join(','),
          if (accessibilityPreference != null)
            'accessibilityPreference': accessibilityPreference.join(','),
          if (fromName != null) 'fromName': fromName,
          if (toName != null) 'toName': toName,
          if (viaName != null) 'viaName': viaName,
          if (maxTransferMinutes != null)
            'maxTransferMinutes': maxTransferMinutes,
          if (maxWalkingMinutes != null) 'maxWalkingMinutes': maxWalkingMinutes,
          if (walkingSpeed != null) 'walkingSpeed': walkingSpeed,
          if (cyclePreference != null) 'cyclePreference': cyclePreference,
          if (adjustment != null) 'adjustment': adjustment,
          if (bikeProficiency != null)
            'bikeProficiency': bikeProficiency.join(','),
          if (alternativeCycle != null)
            'alternativeCycle': alternativeCycle.toString(),
          if (alternativeWalking != null)
            'alternativeWalking': alternativeWalking.toString(),
          if (applyHtmlMarkup != null)
            'applyHtmlMarkup': applyHtmlMarkup.toString(),
          if (useMultiModalCall != null)
            'useMultiModalCall': useMultiModalCall.toString(),
          if (walkingOptimization != null)
            'walkingOptimization': walkingOptimization.toString(),
          if (taxiOnlyTrip != null) 'taxiOnlyTrip': taxiOnlyTrip.toString(),
          if (routeBetweenEntrances != null)
            'routeBetweenEntrances': routeBetweenEntrances.toString(),
          if (useRealTimeLiveArrivals != null)
            'useRealTimeLiveArrivals': useRealTimeLiveArrivals.toString(),
        },
      ),
    );

    ClientException.checkIsSuccessStatusCode(response);

    return ItineraryResult.fromJson(json.decode(response.body));
  }
}
