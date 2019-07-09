class StreetSegment {
  /// The 16 digit unique integer identifying an OS (Ordnance Survey) ITN (Integrated Transport Network) road link.
  String toid;

  /// The GeoJSON formatted string containing two latitude/longitude (WGS84) pairs that identify the start and end points of the street segment.
  String lineString;

  /// The id from the source system of the disruption that this street belongs to.
  int sourceSystemId;

  /// The key of the source system of the disruption that this street belongs to.
  String sourceSystemKey;

  StreetSegment();

  @override
  String toString() {
    return 'StreetSegment[toid=$toid, lineString=$lineString, sourceSystemId=$sourceSystemId, sourceSystemKey=$sourceSystemKey, ]';
  }

  StreetSegment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    toid = json['toid'];
    lineString = json['lineString'];
    sourceSystemId = json['sourceSystemId'];
    sourceSystemKey = json['sourceSystemKey'];
  }

  Map<String, dynamic> toJson() {
    return {
      'toid': toid,
      'lineString': lineString,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey
    };
  }

  static List<StreetSegment> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StreetSegment>()
        : json.map((value) => StreetSegment.fromJson(value)).toList();
  }

  static Map<String, StreetSegment> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, StreetSegment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StreetSegment.fromJson(value));
    }
    return map;
  }
}
