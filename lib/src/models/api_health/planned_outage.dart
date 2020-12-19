import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/api_health/service_status.dart';

part 'planned_outage.g.dart';

@JsonSerializable()
class PlannedOutage {
  String? id;
  String? apiName;
  DateTime? startDateTime;
  DateTime? endDateTime;
  bool? active;
  String? affectedServicesDisplay;
  List<ServiceStatus>? childServices;

  PlannedOutage({
    this.id,
    this.apiName,
    this.startDateTime,
    this.endDateTime,
    this.active,
    this.affectedServicesDisplay,
    this.childServices,
  });

  factory PlannedOutage.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlannedOutageFromJson(json);

  static List<PlannedOutage> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlannedOutage.fromJson(value),
          )
          .toList();

  static Map<String, PlannedOutage> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlannedOutage.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlannedOutageToJson(this);
}
