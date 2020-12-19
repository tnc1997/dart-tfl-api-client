import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/journey_planner/disambiguation.dart';
import 'package:tfl_api_client/src/models/journey_planner/journey_result.dart';
import 'package:tfl_api_client/src/models/journey_planner/journey_vector.dart';
import 'package:tfl_api_client/src/models/journey_planner/search_criteria.dart';

part 'disambiguation_result.g.dart';

@JsonSerializable()
class DisambiguationResult extends JourneyResult {
  Disambiguation1? toLocationDisambiguation;
  Disambiguation1? fromLocationDisambiguation;
  Disambiguation1? viaLocationDisambiguation;

  DisambiguationResult({
    int? recommendedMaxAgeMinutes,
    SearchCriteria? searchCriteria,
    JourneyVector? journeyVector,
    this.toLocationDisambiguation,
    this.fromLocationDisambiguation,
    this.viaLocationDisambiguation,
  }) : super(
          recommendedMaxAgeMinutes: recommendedMaxAgeMinutes,
          searchCriteria: searchCriteria,
          journeyVector: journeyVector,
        );

  factory DisambiguationResult.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisambiguationResultFromJson(json);

  static List<DisambiguationResult> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisambiguationResult.fromJson(value),
          )
          .toList();

  static Map<String, DisambiguationResult> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisambiguationResult.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisambiguationResultToJson(this);
}
