import '../../../internal/serializable.dart';

class Obstacle implements Serializable {
  String type;

  String incline;

  int stopId;

  String position;

  Obstacle({
    this.type,
    this.incline,
    this.stopId,
    this.position,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'incline': incline,
      'stopId': stopId,
      'position': position,
    };
  }

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

  static List<Obstacle> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Obstacle>()
        : json.map((value) => Obstacle.fromJson(value)).toList();
  }

  static Map<String, Obstacle> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Obstacle>()
        : json.map((key, value) => MapEntry(key, Obstacle.fromJson(value)));
  }
}
