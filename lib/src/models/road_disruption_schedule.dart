import 'package:json_annotation/json_annotation.dart';

part 'road_disruption_schedule.g.dart';

@JsonSerializable()
class RoadDisruptionSchedule {
  DateTime? startTime;
  DateTime? endTime;

  RoadDisruptionSchedule({
    this.startTime,
    this.endTime,
  });

  factory RoadDisruptionSchedule.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RoadDisruptionScheduleFromJson(json);

  static List<RoadDisruptionSchedule> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RoadDisruptionSchedule.fromJson(value),
          )
          .toList();

  static Map<String, RoadDisruptionSchedule> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RoadDisruptionSchedule.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RoadDisruptionScheduleToJson(this);
}
