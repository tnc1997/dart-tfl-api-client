import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/api_health/api_health.dart';
import 'package:tfl_api_client/src/models/api_health/planned_outage.dart';

part 'api_health_parent.g.dart';

@JsonSerializable()
class ApiHealthParent {
  ApiHealth? currentApiHealth;
  List<PlannedOutage>? plannedOutages;

  ApiHealthParent({
    this.currentApiHealth,
    this.plannedOutages,
  });

  factory ApiHealthParent.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ApiHealthParentFromJson(json);

  static List<ApiHealthParent> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ApiHealthParent.fromJson(value),
          )
          .toList();

  static Map<String, ApiHealthParent> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ApiHealthParent.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ApiHealthParentToJson(this);
}
