class Obstacle {
  String? type;
  String? incline;
  int? stopId;
  String? position;

  Obstacle({
    this.type,
    this.incline,
    this.stopId,
    this.position,
  });

  factory Obstacle.fromJson(
    Map<String, dynamic> json,
  ) {
    return Obstacle(
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
