import '../../../internal/serializable.dart';

class PlannedWork implements Serializable {
  String id;

  String description;

  DateTime createdDateTime;

  DateTime lastUpdateDateTime;

  PlannedWork({
    this.id,
    this.description,
    this.createdDateTime,
    this.lastUpdateDateTime,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'createdDateTime': createdDateTime == null
          ? ''
          : createdDateTime.toUtc().toIso8601String(),
      'lastUpdateDateTime': lastUpdateDateTime == null
          ? ''
          : lastUpdateDateTime.toUtc().toIso8601String(),
    };
  }

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

  static List<PlannedWork> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PlannedWork>()
        : json.map((value) => PlannedWork.fromJson(value)).toList();
  }

  static Map<String, PlannedWork> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PlannedWork>()
        : json.map((key, value) => MapEntry(key, PlannedWork.fromJson(value)));
  }
}
