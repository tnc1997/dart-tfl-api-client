class LineModeGroup {
  String modeName;

  List<String> lineIdentifier;

  LineModeGroup();

  @override
  String toString() {
    return 'LineModeGroup[modeName=$modeName, lineIdentifier=$lineIdentifier, ]';
  }

  LineModeGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modeName = json['modeName'];
    lineIdentifier =
        (json['lineIdentifier'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {'modeName': modeName, 'lineIdentifier': lineIdentifier};
  }

  static List<LineModeGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<LineModeGroup>()
        : json.map((value) => new LineModeGroup.fromJson(value)).toList();
  }

  static Map<String, LineModeGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LineModeGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new LineModeGroup.fromJson(value));
    }
    return map;
  }
}
