import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/time_adjustment.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'time_adjustments.g.dart';

@JsonSerializable()
class TimeAdjustments implements Serializable {
  TimeAdjustment earliest;

  TimeAdjustment earlier;

  TimeAdjustment later;

  TimeAdjustment latest;

  TimeAdjustments({
    this.earliest,
    this.earlier,
    this.later,
    this.latest,
  });

  factory TimeAdjustments.fromJson(Map<String, dynamic> json) {
    return _$TimeAdjustmentsFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimeAdjustmentsToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
