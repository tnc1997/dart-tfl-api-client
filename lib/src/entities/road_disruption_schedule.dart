import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'road_disruption_schedule.g.dart';

@JsonSerializable()
class RoadDisruptionSchedule implements Serializable {
  DateTime startTime;

  DateTime endTime;

  RoadDisruptionSchedule({
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionSchedule.fromJson(Map<String, dynamic> json) {
    return _$RoadDisruptionScheduleFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RoadDisruptionScheduleToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
