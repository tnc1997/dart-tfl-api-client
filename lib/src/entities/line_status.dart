import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/line_disruption.dart';
import 'package:tfl_api_client/src/entities/validity_period.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_status.g.dart';

@JsonSerializable()
class LineStatus implements Serializable {
  int id;

  String lineId;

  int statusSeverity;

  String statusSeverityDescription;

  String reason;

  DateTime created;

  DateTime modified;

  List<ValidityPeriod> validityPeriods;

  LineDisruption disruption;

  LineStatus({
    this.id,
    this.lineId,
    this.statusSeverity,
    this.statusSeverityDescription,
    this.reason,
    this.created,
    this.modified,
    this.validityPeriods,
    this.disruption,
  });

  factory LineStatus.fromJson(Map<String, dynamic> json) {
    return _$LineStatusFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineStatusToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
