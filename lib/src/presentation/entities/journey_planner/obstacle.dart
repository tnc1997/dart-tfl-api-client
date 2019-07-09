class Obstacle {
  String type;

  String incline;

  int stopId;

  String position;

  Obstacle();

  @override
  String toString() {
    return 'Obstacle[type=$type, incline=$incline, stopId=$stopId, position=$position, ]';
  }

  Obstacle.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    incline = json['incline'];
    stopId = json['stopId'];
    position = json['position'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'incline': incline,
      'stopId': stopId,
      'position': position
    };
  }

  static List<Obstacle> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Obstacle>()
        : json.map((value) => new Obstacle.fromJson(value)).toList();
  }

  static Map<String, Obstacle> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Obstacle>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Obstacle.fromJson(value));
    }
    return map;
  }
}
