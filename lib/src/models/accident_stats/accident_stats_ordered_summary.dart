import 'package:json_annotation/json_annotation.dart';

part 'accident_stats_ordered_summary.g.dart';

@JsonSerializable()
class AccidentStatsOrderedSummary {
  int? year;
  String? borough;
  int? accidents;

  AccidentStatsOrderedSummary({
    this.year,
    this.borough,
    this.accidents,
  });

  factory AccidentStatsOrderedSummary.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AccidentStatsOrderedSummaryFromJson(json);

  static List<AccidentStatsOrderedSummary> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AccidentStatsOrderedSummary.fromJson(value),
          )
          .toList();

  static Map<String, AccidentStatsOrderedSummary> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AccidentStatsOrderedSummary.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AccidentStatsOrderedSummaryToJson(this);
}
