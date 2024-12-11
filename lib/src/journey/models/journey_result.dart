import 'journey_vector.dart';
import 'search_criteria.dart';

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
