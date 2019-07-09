class DbGeographyWellKnownValue {
  int coordinateSystemId;

  String wellKnownText;

  List<int> wellKnownBinary;

  DbGeographyWellKnownValue();

  @override
  String toString() {
    return 'DbGeographyWellKnownValue[coordinateSystemId=$coordinateSystemId, wellKnownText=$wellKnownText, wellKnownBinary=$wellKnownBinary, ]';
  }

  DbGeographyWellKnownValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    coordinateSystemId = json['coordinateSystemId'];
    wellKnownText = json['wellKnownText'];
    wellKnownBinary = json['wellKnownBinary'];
  }

  Map<String, dynamic> toJson() {
    return {
      'coordinateSystemId': coordinateSystemId,
      'wellKnownText': wellKnownText,
      'wellKnownBinary': wellKnownBinary
    };
  }

  static List<DbGeographyWellKnownValue> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DbGeographyWellKnownValue>()
        : json
            .map((value) => DbGeographyWellKnownValue.fromJson(value))
            .toList();
  }

  static Map<String, DbGeographyWellKnownValue> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, DbGeographyWellKnownValue>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DbGeographyWellKnownValue.fromJson(value));
    }
    return map;
  }
}
