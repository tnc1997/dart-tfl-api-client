import 'package:json_annotation/json_annotation.dart';

part 'ptal_scenario.g.dart';

@JsonSerializable()
class PtalScenario {
  String? scenarioName;
  int? year;

  PtalScenario({
    this.scenarioName,
    this.year,
  });

  factory PtalScenario.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PtalScenarioFromJson(json);

  static List<PtalScenario> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PtalScenario.fromJson(value),
          )
          .toList();

  static Map<String, PtalScenario> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PtalScenario.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PtalScenarioToJson(this);
}
