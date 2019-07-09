class LineGroup {
  String naptanIdReference;

  String stationAtcoCode;

  List<String> lineIdentifier;

  LineGroup();

  @override
  String toString() {
    return 'LineGroup[naptanIdReference=$naptanIdReference, stationAtcoCode=$stationAtcoCode, lineIdentifier=$lineIdentifier, ]';
  }

  LineGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    naptanIdReference = json['naptanIdReference'];
    stationAtcoCode = json['stationAtcoCode'];
    lineIdentifier =
        (json['lineIdentifier'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'naptanIdReference': naptanIdReference,
      'stationAtcoCode': stationAtcoCode,
      'lineIdentifier': lineIdentifier
    };
  }

  static List<LineGroup> listFromJson(List<dynamic> json) {
    return json == null
        ? List<LineGroup>()
        : json.map((value) => LineGroup.fromJson(value)).toList();
  }

  static Map<String, LineGroup> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, LineGroup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = LineGroup.fromJson(value));
    }
    return map;
  }
}
