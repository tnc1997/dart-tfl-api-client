import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/path_attribute.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'instruction_step.g.dart';

@JsonSerializable()
class InstructionStep implements Serializable {
  String description;

  String turnDirection;

  String streetName;

  int distance;

  int cumulativeDistance;

  int skyDirection;

  String skyDirectionDescription;
  // enum skyDirectionDescriptionEnum {  North,  NorthEast,  East,  SouthEast,  South,  SouthWest,  West,  NorthWest,  };

  int cumulativeTravelTime;

  double latitude;

  double longitude;

  PathAttribute pathAttribute;

  String descriptionHeading;

  String trackType;
  // enum trackTypeEnum {  CycleSuperHighway,  CanalTowpath,  QuietRoad,  ProvisionForCyclists,  BusyRoads,  None,  PushBike,  Quietway,  };

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

  factory InstructionStep.fromJson(Map<String, dynamic> json) {
    return _$InstructionStepFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$InstructionStepToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
