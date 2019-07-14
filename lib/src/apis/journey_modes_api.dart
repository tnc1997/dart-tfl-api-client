import 'dart:async';

import '../entities/mode.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('JourneyModes')\]
class JourneyModesApi {
  final ApiRequester _requester;

  JourneyModesApi(this._requester);

  /// Gets all the journey modes.
  ///
  /// \[HttpGet\]
  Future<List<Mode>> get() async {
    final path = 'Journey/Meta/Modes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Mode.fromJson(json)).toList();
  }
}
