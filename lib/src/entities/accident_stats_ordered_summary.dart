import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'accident_stats_ordered_summary.g.dart';

@JsonSerializable()
class AccidentStatsOrderedSummary implements Serializable {
  int year;

  String borough;

  int accidents;

  AccidentStatsOrderedSummary({
    this.year,
    this.borough,
    this.accidents,
  });

  factory AccidentStatsOrderedSummary.fromJson(Map<String, dynamic> json) {
    return _$AccidentStatsOrderedSummaryFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$AccidentStatsOrderedSummaryToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
