import 'dart:async';

import '../entities/mode.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('StopPointModes')\]
class StopPointModesApi {
  final ApiRequester _requester;

  StopPointModesApi(this._requester);

  /// Gets all the stop point modes.
  ///
  /// \[HttpGet\]
  Future<List<Mode>> get() async {
    final path = 'StopPoint/Meta/Modes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Mode.fromJson(json)).toList();
  }
}
