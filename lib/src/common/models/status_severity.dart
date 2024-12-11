import 'package:json_annotation/json_annotation.dart';

part 'status_severity.g.dart';

@JsonSerializable()
class StatusSeverity {
  String? modeName;
  int? severityLevel;
  String? description;

  StatusSeverity({
    this.modeName,
    this.severityLevel,
    this.description,
  });

  factory StatusSeverity.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatusSeverityFromJson(json);

  static List<StatusSeverity> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StatusSeverity.fromJson(value),
          )
          .toList();

  static Map<String, StatusSeverity> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StatusSeverity.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StatusSeverityToJson(this);
}
