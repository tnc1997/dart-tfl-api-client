import 'coordinate_reference_system.dart';

class Geography {
  String? type;
  List<dynamic>? coordinates;
  CoordinateReferenceSystem? crs;

  Geography({
    this.type,
    this.coordinates,
    this.crs,
  });

  factory Geography.fromJson(
    Map<String, dynamic> json,
  ) {
    return Geography(
      type: json['type'] as String?,
      coordinates: (json['coordinates'] as List<dynamic>?)
          ?.map((e) => e as dynamic)
          .toList(),
      crs: json['crs'] == null
          ? null
          : CoordinateReferenceSystem.fromJson(
              json['crs'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'coordinates': coordinates,
      'crs': crs,
    };
  }
}
