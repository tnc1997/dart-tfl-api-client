import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/journey_planner/time_adjustments.dart';

part 'search_criteria.g.dart';

@JsonSerializable()
class SearchCriteria {
  DateTime? dateTime;
  String? dateTimeType;
  TimeAdjustments? timeAdjustments;

  SearchCriteria({
    this.dateTime,
    this.dateTimeType,
    this.timeAdjustments,
  });

  factory SearchCriteria.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SearchCriteriaFromJson(json);

  static List<SearchCriteria> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => SearchCriteria.fromJson(value),
          )
          .toList();

  static Map<String, SearchCriteria> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          SearchCriteria.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$SearchCriteriaToJson(this);
}
