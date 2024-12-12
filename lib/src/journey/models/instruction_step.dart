import 'path_attribute.dart';

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
  ) {
    return InstructionStep(
      description: json['description'] as String?,
      turnDirection: json['turnDirection'] as String?,
      streetName: json['streetName'] as String?,
      distance: (json['distance'] as num?)?.toInt(),
      cumulativeDistance: (json['cumulativeDistance'] as num?)?.toInt(),
      skyDirection: (json['skyDirection'] as num?)?.toInt(),
      skyDirectionDescription: json['skyDirectionDescription'] as String?,
      cumulativeTravelTime: (json['cumulativeTravelTime'] as num?)?.toInt(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      pathAttribute: json['pathAttribute'] == null
          ? null
          : PathAttribute.fromJson(
              json['pathAttribute'] as Map<String, dynamic>),
      descriptionHeading: json['descriptionHeading'] as String?,
      trackType: json['trackType'] as String?,
    );
  }

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
}
