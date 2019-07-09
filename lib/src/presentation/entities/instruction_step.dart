import './path_attribute.dart';
import '../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'turnDirection': turnDirection,
      'streetName': streetName,
      'distance': distance,
      'cumulativeDistance': cumulativeDistance,
      'skyDirection': skyDirection,
      'skyDirectionDescription': skyDirectionDescription,
      'cumulativeTravelTime': cumulativeTravelTime,
      'latitude': latitude,
      'longitude': longitude,
      'pathAttribute': pathAttribute,
      'descriptionHeading': descriptionHeading,
      'trackType': trackType,
    };
  }

  @override
  String toString() {
    return 'InstructionStep[description=$description, turnDirection=$turnDirection, streetName=$streetName, distance=$distance, cumulativeDistance=$cumulativeDistance, skyDirection=$skyDirection, skyDirectionDescription=$skyDirectionDescription, cumulativeTravelTime=$cumulativeTravelTime, latitude=$latitude, longitude=$longitude, pathAttribute=$pathAttribute, descriptionHeading=$descriptionHeading, trackType=$trackType, ]';
  }

  InstructionStep.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    description = json['description'];
    turnDirection = json['turnDirection'];
    streetName = json['streetName'];
    distance = json['distance'];
    cumulativeDistance = json['cumulativeDistance'];
    skyDirection = json['skyDirection'];
    skyDirectionDescription = json['skyDirectionDescription'];
    cumulativeTravelTime = json['cumulativeTravelTime'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    pathAttribute = PathAttribute.fromJson(json['pathAttribute']);
    descriptionHeading = json['descriptionHeading'];
    trackType = json['trackType'];
  }

  static List<InstructionStep> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<InstructionStep>()
        : json.map((value) => InstructionStep.fromJson(value)).toList();
  }

  static Map<String, InstructionStep> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, InstructionStep>()
        : json.map(
            (key, value) => MapEntry(key, InstructionStep.fromJson(value)));
  }
}
