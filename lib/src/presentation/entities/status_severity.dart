class StatusSeverity {
  String modeName;

  int severityLevel;

  String description;

  StatusSeverity();

  @override
  String toString() {
    return 'StatusSeverity[modeName=$modeName, severityLevel=$severityLevel, description=$description, ]';
  }

  StatusSeverity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modeName = json['modeName'];
    severityLevel = json['severityLevel'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'severityLevel': severityLevel,
      'description': description
    };
  }

  static List<StatusSeverity> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StatusSeverity>()
        : json.map((value) => StatusSeverity.fromJson(value)).toList();
  }

  static Map<String, StatusSeverity> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, StatusSeverity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StatusSeverity.fromJson(value));
    }
    return map;
  }
}
