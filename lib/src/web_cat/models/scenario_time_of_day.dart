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
  ) {
    return ScenarioTimeOfDay(
      id: json['id'] as String?,
      title: json['title'] as String?,
      scenarioCode: json['scenarioCode'] as String?,
      scenarioMode: json['scenarioMode'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'scenarioCode': scenarioCode,
      'scenarioMode': scenarioMode,
    };
  }
}
