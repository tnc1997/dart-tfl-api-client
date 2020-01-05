import 'dart:async';

import 'package:tfl_api_client/src/entities/mode.dart';
import 'package:tfl_api_client/src/interfaces/resource_api.dart';
import 'package:tfl_api_client/src/requesters/api_requester.dart';

///
///
/// \[Route('JourneyModes')\]
class JourneyModesResourceApi implements ResourceApi<Mode> {
  final ApiRequester _requester;

  JourneyModesResourceApi(this._requester);

  /// Gets all the journey modes.
  ///
  /// \[HttpGet\]
  @override
  Future<List<Mode>> get() async {
    final path = 'Journey/Meta/Modes';

    final response = await _requester.request(path, 'GET');

    return (response as List).map((json) => Mode.fromJson(json)).toList();
  }
}
