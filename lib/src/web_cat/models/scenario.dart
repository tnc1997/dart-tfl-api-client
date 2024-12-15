import 'scenario_mode.dart';
import 'scenario_time_of_day.dart';

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
  ) {
    return Scenario(
      id: json['id'] as String?,
      title: json['title'] as String?,
      description: json['description'] as String?,
      year: (json['year'] as num?)?.toInt(),
      timesOfDay: (json['timesOfDay'] as List<dynamic>?)
          ?.map((e) => ScenarioTimeOfDay.fromJson(e as Map<String, dynamic>))
          .toList(),
      modes: (json['modes'] as List<dynamic>?)
          ?.map((e) => ScenarioMode.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'year': year,
      'timesOfDay': timesOfDay,
      'modes': modes,
    };
  }
}
