class JourneyPlannerObstacle {
  String? type;
  String? incline;
  int? stopId;
  String? position;

  JourneyPlannerObstacle({
    this.type,
    this.incline,
    this.stopId,
    this.position,
  });

  factory JourneyPlannerObstacle.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerObstacle(
      type: json['type'] as String?,
      incline: json['incline'] as String?,
      stopId: (json['stopId'] as num?)?.toInt(),
      position: json['position'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'incline': incline,
      'stopId': stopId,
      'position': position,
    };
  }
}
