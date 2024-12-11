import 'package:json_annotation/json_annotation.dart';

part 'disruption_override.g.dart';

@JsonSerializable()
class DisruptionOverride {
  int? id;
  String? lineId;
  int? statusSeverityId;
  String? description;
  String? lineName;
  String? modeName;

  DisruptionOverride({
    this.id,
    this.lineId,
    this.statusSeverityId,
    this.description,
    this.lineName,
    this.modeName,
  });

  factory DisruptionOverride.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisruptionOverrideFromJson(json);

  static List<DisruptionOverride> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisruptionOverride.fromJson(value),
          )
          .toList();

  static Map<String, DisruptionOverride> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisruptionOverride.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisruptionOverrideToJson(this);
}
