class JourneyPlannerElevation {
  double? distance;
  double? endLat;
  double? endLon;
  double? gradient;
  double? heightFromPreviousPoint;
  double? startLat;
  double? startLon;

  JourneyPlannerElevation({
    this.distance,
    this.endLat,
    this.endLon,
    this.gradient,
    this.heightFromPreviousPoint,
    this.startLat,
    this.startLon,
  });

  factory JourneyPlannerElevation.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerElevation(
      distance: (json['distance'] as num?)?.toDouble(),
      endLat: (json['endLat'] as num?)?.toDouble(),
      endLon: (json['endLon'] as num?)?.toDouble(),
      gradient: (json['gradient'] as num?)?.toDouble(),
      heightFromPreviousPoint:
          (json['heightFromPreviousPoint'] as num?)?.toDouble(),
      startLat: (json['startLat'] as num?)?.toDouble(),
      startLon: (json['startLon'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'distance': distance,
      'endLat': endLat,
      'endLon': endLon,
      'gradient': gradient,
      'heightFromPreviousPoint': heightFromPreviousPoint,
      'startLat': startLat,
      'startLon': startLon,
    };
  }
}
