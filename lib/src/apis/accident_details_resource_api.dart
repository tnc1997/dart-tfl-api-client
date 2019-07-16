import 'dart:async';

import '../entities/accident_detail.dart';
import '../interfaces/resource_api.dart';
import '../requesters/api_requester.dart';

///
///
/// \[Route('AccidentDetails')\]
class AccidentDetailsResourceApi implements ResourceApi<AccidentDetail> {
  final ApiRequester _requester;

  AccidentDetailsResourceApi(this._requester);

  /// Gets all the accident details.
  ///
  /// \[HttpGet\]
  @override
  Future<List<AccidentDetail>> get({int year}) async {
    Future<List<AccidentDetail>> request(String path) async {
      final response = await _requester.request(path, 'GET');

      return (response as List)
          .map((json) => AccidentDetail.fromJson(json))
          .toList();
    }

    if (year != null) {
      return await request('AccidentStats/$year');
    } else {
      final years = [2012, 2013, 2014, 2015, 2016];

      final futures = years
          .map((year) => 'AccidentStats/$year')
          .map((path) async => await request(path));

      final accidentDetails = await Future.wait(futures);

      return accidentDetails
          .expand((accidentDetails) => accidentDetails)
          .toList();
    }
  }
}
