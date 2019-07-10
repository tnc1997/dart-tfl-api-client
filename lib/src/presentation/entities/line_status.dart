import './disruption.dart';
import './validity_period.dart';
import '../../internal/serializable.dart';

class LineStatus implements Serializable {
  int id;

  String lineId;

  int statusSeverity;

  String statusSeverityDescription;

  String reason;

  DateTime created;

  DateTime modified;

  List<ValidityPeriod> validityPeriods;

  Disruption disruption;

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'statusSeverity': statusSeverity,
      'statusSeverityDescription': statusSeverityDescription,
      'reason': reason,
      'created': created == null ? '' : created.toUtc().toIso8601String(),
      'modified': modified == null ? '' : modified.toUtc().toIso8601String(),
      'validityPeriods': validityPeriods,
      'disruption': disruption,
    };
  }

  @override
  String toString() {
    return 'LineStatus[id=$id, lineId=$lineId, statusSeverity=$statusSeverity, statusSeverityDescription=$statusSeverityDescription, reason=$reason, created=$created, modified=$modified, validityPeriods=$validityPeriods, disruption=$disruption]';
  }

  LineStatus.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    lineId = json['lineId'];
    statusSeverity = json['statusSeverity'];
    statusSeverityDescription = json['statusSeverityDescription'];
    reason = json['reason'];
    created = json['created'] == null ? null : DateTime.parse(json['created']);
    modified =
        json['modified'] == null ? null : DateTime.parse(json['modified']);
    validityPeriods = ValidityPeriod.listFromJson(json['validityPeriods']);
    disruption = Disruption.fromJson(json['disruption']);
  }

  static List<LineStatus> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineStatus>()
        : json.map((value) => LineStatus.fromJson(value)).toList();
  }

  static Map<String, LineStatus> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineStatus>()
        : json.map((key, value) => MapEntry(key, LineStatus.fromJson(value)));
  }
}
