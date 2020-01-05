import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'status_severity.g.dart';

@JsonSerializable()
class StatusSeverity implements Serializable {
  String modeName;

  int severityLevel;

  String description;

  StatusSeverity({
    this.modeName,
    this.severityLevel,
    this.description,
  });

  factory StatusSeverity.fromJson(Map<String, dynamic> json) {
    return _$StatusSeverityFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StatusSeverityToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
