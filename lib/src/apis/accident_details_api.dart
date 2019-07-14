import 'dart:async';

import '../entities/accident_detail.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('AccidentDetails')\]
class AccidentDetailsApi {
  final ApiRequester _requester;

  AccidentDetailsApi(this._requester);

  /// Gets all the accident details.
  ///
  /// \[HttpGet\]
  Future<List<AccidentDetail>> get({int year}) async {
    if (year != null) {
      final path = 'AccidentStats/$year';

      final response = await _requester.request(path, 'GET');

      return (response as List)
          .map((json) => AccidentDetail.fromJson(json))
          .toList();
    } else {
      final years = [2012, 2013, 2014, 2015, 2016];

      final futures = years.map((year) async {
        final path = 'AccidentStats/$year';

        final response = await _requester.request(path, 'GET');

        return (response as List)
            .map((json) => AccidentDetail.fromJson(json))
            .toList();
      });

      final accidentDetails = await Future.wait(futures);

      return accidentDetails
          .expand((accidentDetails) => accidentDetails)
          .toList();
    }
  }
}
