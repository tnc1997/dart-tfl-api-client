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

  static List<Obstacle> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Obstacle.fromJson(value),
          )
          .toList();

  static Map<String, Obstacle> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Obstacle.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'incline': incline,
      'stopId': stopId,
      'position': position,
    };
  }
}
