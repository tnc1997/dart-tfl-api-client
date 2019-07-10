import '../../internal/serializable.dart';

class StreetSegment implements Serializable {
  /// The 16 digit unique integer identifying an OS (Ordnance Survey) ITN (Integrated Transport Network) road link.
  String toid;

  /// The GeoJSON formatted string containing two latitude/longitude (WGS84) pairs that identify the start and end points of the street segment.
  String lineString;

  /// The id from the source system of the disruption that this street belongs to.
  int sourceSystemId;

  /// The key of the source system of the disruption that this street belongs to.
  String sourceSystemKey;

  StreetSegment({
    this.toid,
    this.lineString,
    this.sourceSystemId,
    this.sourceSystemKey,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'toid': toid,
      'lineString': lineString,
      'sourceSystemId': sourceSystemId,
      'sourceSystemKey': sourceSystemKey,
    };
  }

  @override
  String toString() {
    return 'StreetSegment[toid=$toid, lineString=$lineString, sourceSystemId=$sourceSystemId, sourceSystemKey=$sourceSystemKey]';
  }

  StreetSegment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    toid = json['toid'];
    lineString = json['lineString'];
    sourceSystemId = json['sourceSystemId'];
    sourceSystemKey = json['sourceSystemKey'];
  }

  static List<StreetSegment> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StreetSegment>()
        : json.map((value) => StreetSegment.fromJson(value)).toList();
  }

  static Map<String, StreetSegment> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StreetSegment>()
        : json
            .map((key, value) => MapEntry(key, StreetSegment.fromJson(value)));
  }
}
