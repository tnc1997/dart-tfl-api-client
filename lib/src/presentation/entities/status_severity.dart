import '../../internal/serializable.dart';

class StatusSeverity implements Serializable {
  String modeName;

  int severityLevel;

  String description;

  StatusSeverity({
    this.modeName,
    this.severityLevel,
    this.description,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'severityLevel': severityLevel,
      'description': description,
    };
  }

  @override
  String toString() {
    return 'StatusSeverity[modeName=$modeName, severityLevel=$severityLevel, description=$description]';
  }

  StatusSeverity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    modeName = json['modeName'];
    severityLevel = json['severityLevel'];
    description = json['description'];
  }

  static List<StatusSeverity> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StatusSeverity>()
        : json.map((value) => StatusSeverity.fromJson(value)).toList();
  }

  static Map<String, StatusSeverity> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StatusSeverity>()
        : json
            .map((key, value) => MapEntry(key, StatusSeverity.fromJson(value)));
  }
}
