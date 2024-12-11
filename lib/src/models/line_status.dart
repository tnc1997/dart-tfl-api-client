import 'package:json_annotation/json_annotation.dart';

import 'disruption.dart';
import 'validity_period.dart';

part 'line_status.g.dart';

@JsonSerializable()
class LineStatus {
  int? id;
  String? lineId;
  int? statusSeverity;
  String? statusSeverityDescription;
  String? reason;
  DateTime? created;
  DateTime? modified;
  List<ValidityPeriod>? validityPeriod;
  Disruption? disruption;

  LineStatus({
    this.id,
    this.lineId,
    this.statusSeverity,
    this.statusSeverityDescription,
    this.reason,
    this.created,
    this.modified,
    this.validityPeriod,
    this.disruption,
  });

  factory LineStatus.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineStatusFromJson(json);

  static List<LineStatus> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineStatus.fromJson(value),
          )
          .toList();

  static Map<String, LineStatus> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineStatus.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineStatusToJson(this);
}
