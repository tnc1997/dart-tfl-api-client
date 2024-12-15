import 'ptal_scenario.dart';

class PtalResult {
  String? value;
  DateTime? lastRefreshed;
  PtalScenario? scenario;
  int? gridId;

  PtalResult({
    this.value,
    this.lastRefreshed,
    this.scenario,
    this.gridId,
  });

  factory PtalResult.fromJson(
    Map<String, dynamic> json,
  ) {
    return PtalResult(
      value: json['value'] as String?,
      lastRefreshed: json['lastRefreshed'] == null
          ? null
          : DateTime.parse(json['lastRefreshed'] as String),
      scenario: json['scenario'] == null
          ? null
          : PtalScenario.fromJson(json['scenario'] as Map<String, dynamic>),
      gridId: (json['gridId'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'value': value,
      'lastRefreshed': lastRefreshed?.toIso8601String(),
      'scenario': scenario,
      'gridId': gridId,
    };
  }
}
