import 'package:json_annotation/json_annotation.dart';

import 'path_attribute.dart';

part 'instruction_step.g.dart';

@JsonSerializable()
class InstructionStep {
  String? description;
  String? turnDirection;
  String? streetName;
  int? distance;
  int? cumulativeDistance;
  int? skyDirection;
  String? skyDirectionDescription;
  int? cumulativeTravelTime;
  double? latitude;
  double? longitude;
  PathAttribute? pathAttribute;
  String? descriptionHeading;
  String? trackType;

  InstructionStep({
    this.description,
    this.turnDirection,
    this.streetName,
    this.distance,
    this.cumulativeDistance,
    this.skyDirection,
    this.skyDirectionDescription,
    this.cumulativeTravelTime,
    this.latitude,
    this.longitude,
    this.pathAttribute,
    this.descriptionHeading,
    this.trackType,
  });

  factory InstructionStep.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionStepFromJson(json);

  static List<InstructionStep> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => InstructionStep.fromJson(value),
          )
          .toList();

  static Map<String, InstructionStep> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          InstructionStep.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$InstructionStepToJson(this);
}
