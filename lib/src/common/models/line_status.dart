import 'disruption.dart';
import 'validity_period.dart';

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
  ) {
    return LineStatus(
      id: (json['id'] as num?)?.toInt(),
      lineId: json['lineId'] as String?,
      statusSeverity: (json['statusSeverity'] as num?)?.toInt(),
      statusSeverityDescription: json['statusSeverityDescription'] as String?,
      reason: json['reason'] as String?,
      created: json['created'] == null
          ? null
          : DateTime.parse(json['created'] as String),
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
      validityPeriod: (json['validityPeriod'] as List<dynamic>?)
          ?.map((e) => ValidityPeriod.fromJson(e as Map<String, dynamic>))
          .toList(),
      disruption: json['disruption'] == null
          ? null
          : Disruption.fromJson(json['disruption'] as Map<String, dynamic>),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lineId': lineId,
      'statusSeverity': statusSeverity,
      'statusSeverityDescription': statusSeverityDescription,
      'reason': reason,
      'created': created?.toIso8601String(),
      'modified': modified?.toIso8601String(),
      'validityPeriod': validityPeriod,
      'disruption': disruption,
    };
  }
}
