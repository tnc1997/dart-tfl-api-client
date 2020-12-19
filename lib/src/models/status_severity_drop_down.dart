import 'package:json_annotation/json_annotation.dart';

part 'status_severity_drop_down.g.dart';

@JsonSerializable()
class StatusSeverityDropDown {
  int? id;
  String? modeName;
  int? severityLevel;
  String? description;

  StatusSeverityDropDown({
    this.id,
    this.modeName,
    this.severityLevel,
    this.description,
  });

  factory StatusSeverityDropDown.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StatusSeverityDropDownFromJson(json);

  static List<StatusSeverityDropDown> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StatusSeverityDropDown.fromJson(value),
          )
          .toList();

  static Map<String, StatusSeverityDropDown> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StatusSeverityDropDown.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StatusSeverityDropDownToJson(this);
}
