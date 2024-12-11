import 'package:json_annotation/json_annotation.dart';

import 'scenario_mode.dart';
import 'scenario_time_of_day.dart';

part 'scenario.g.dart';

@JsonSerializable()
class Scenario {
  String? id;
  String? title;
  String? description;
  int? year;
  List<ScenarioTimeOfDay>? timesOfDay;
  List<ScenarioMode>? modes;

  Scenario({
    this.id,
    this.title,
    this.description,
    this.year,
    this.timesOfDay,
    this.modes,
  });

  factory Scenario.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ScenarioFromJson(json);

  static List<Scenario> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Scenario.fromJson(value),
          )
          .toList();

  static Map<String, Scenario> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Scenario.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ScenarioToJson(this);
}
