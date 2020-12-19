import 'package:tfl_api_client/src/models/journey_planner/journey_vector.dart';
import 'package:tfl_api_client/src/models/journey_planner/search_criteria.dart';

abstract class JourneyResult {
  int? recommendedMaxAgeMinutes;
  SearchCriteria? searchCriteria;
  JourneyVector? journeyVector;

  JourneyResult({
    this.recommendedMaxAgeMinutes,
    this.searchCriteria,
    this.journeyVector,
  });
}
