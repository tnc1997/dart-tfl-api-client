import 'coordinate_reference_system_properties.dart';

class CoordinateReferenceSystem {
  String? type;
  CoordinateReferenceSystemProperties? properties;

  CoordinateReferenceSystem({
    this.type,
    this.properties,
  });

  factory CoordinateReferenceSystem.fromJson(
    Map<String, dynamic> json,
  ) {
    return CoordinateReferenceSystem(
      type: json['type'],
      properties: json['properties'] == null
          ? null
          : CoordinateReferenceSystemProperties.fromJson(
              json['properties'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'properties': properties,
    };
  }
}
