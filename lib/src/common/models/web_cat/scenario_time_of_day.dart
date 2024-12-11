import 'package:json_annotation/json_annotation.dart';

part 'scenario_time_of_day.g.dart';

@JsonSerializable()
class ScenarioTimeOfDay {
  String? id;
  String? title;
  String? scenarioCode;
  String? scenarioMode;

  ScenarioTimeOfDay({
    this.id,
    this.title,
    this.scenarioCode,
    this.scenarioMode,
  });

  factory ScenarioTimeOfDay.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ScenarioTimeOfDayFromJson(json);

  static List<ScenarioTimeOfDay> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ScenarioTimeOfDay.fromJson(value),
          )
          .toList();

  static Map<String, ScenarioTimeOfDay> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ScenarioTimeOfDay.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ScenarioTimeOfDayToJson(this);
}
