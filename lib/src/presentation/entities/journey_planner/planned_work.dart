class PlannedWork {
  String id;

  String description;

  DateTime createdDateTime;

  DateTime lastUpdateDateTime;

  PlannedWork();

  @override
  String toString() {
    return 'PlannedWork[id=$id, description=$description, createdDateTime=$createdDateTime, lastUpdateDateTime=$lastUpdateDateTime, ]';
  }

  PlannedWork.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    description = json['description'];
    createdDateTime = json['createdDateTime'] == null
        ? null
        : DateTime.parse(json['createdDateTime']);
    lastUpdateDateTime = json['lastUpdateDateTime'] == null
        ? null
        : DateTime.parse(json['lastUpdateDateTime']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'createdDateTime': createdDateTime == null
          ? ''
          : createdDateTime.toUtc().toIso8601String(),
      'lastUpdateDateTime': lastUpdateDateTime == null
          ? ''
          : lastUpdateDateTime.toUtc().toIso8601String()
    };
  }

  static List<PlannedWork> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PlannedWork>()
        : json.map((value) => new PlannedWork.fromJson(value)).toList();
  }

  static Map<String, PlannedWork> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PlannedWork>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PlannedWork.fromJson(value));
    }
    return map;
  }
}
