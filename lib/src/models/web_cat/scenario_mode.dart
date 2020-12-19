import 'package:json_annotation/json_annotation.dart';

part 'scenario_mode.g.dart';

@JsonSerializable()
class ScenarioMode {
  String? id;
  String? title;

  ScenarioMode({
    this.id,
    this.title,
  });

  factory ScenarioMode.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ScenarioModeFromJson(json);

  static List<ScenarioMode> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ScenarioMode.fromJson(value),
          )
          .toList();

  static Map<String, ScenarioMode> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ScenarioMode.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ScenarioModeToJson(this);
}
