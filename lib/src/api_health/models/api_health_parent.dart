import 'api_health.dart';
import 'planned_outage.dart';

class ApiHealthParent {
  ApiHealth? currentApiHealth;
  List<PlannedOutage>? plannedOutages;

  ApiHealthParent({
    this.currentApiHealth,
    this.plannedOutages,
  });

  factory ApiHealthParent.fromJson(
    Map<String, dynamic> json,
  ) {
    return ApiHealthParent(
      currentApiHealth: json['currentApiHealth'] == null
          ? null
          : ApiHealth.fromJson(
              json['currentApiHealth'] as Map<String, dynamic>),
      plannedOutages: (json['plannedOutages'] as List<dynamic>?)
          ?.map((e) => PlannedOutage.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'currentApiHealth': currentApiHealth,
      'plannedOutages': plannedOutages,
    };
  }
}
