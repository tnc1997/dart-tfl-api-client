import 'package:json_annotation/json_annotation.dart';

import 'time_adjustment.dart';

part 'time_adjustments.g.dart';

@JsonSerializable()
class TimeAdjustments {
  TimeAdjustment? earliest;
  TimeAdjustment? earlier;
  TimeAdjustment? later;
  TimeAdjustment? latest;

  TimeAdjustments({
    this.earliest,
    this.earlier,
    this.later,
    this.latest,
  });

  factory TimeAdjustments.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TimeAdjustmentsFromJson(json);

  static List<TimeAdjustments> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TimeAdjustments.fromJson(value),
          )
          .toList();

  static Map<String, TimeAdjustments> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TimeAdjustments.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TimeAdjustmentsToJson(this);
}
