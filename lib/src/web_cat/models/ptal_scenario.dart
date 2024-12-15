class PtalScenario {
  String? scenarioName;
  int? year;

  PtalScenario({
    this.scenarioName,
    this.year,
  });

  factory PtalScenario.fromJson(
    Map<String, dynamic> json,
  ) {
    return PtalScenario(
      scenarioName: json['scenarioName'] as String?,
      year: (json['year'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'scenarioName': scenarioName,
      'year': year,
    };
  }
}
