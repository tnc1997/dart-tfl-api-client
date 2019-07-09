import '../../internal/serializable.dart';

class LineGroup implements Serializable {
  String naptanIdReference;

  String stationAtcoCode;

  List<String> lineIdentifier;

  LineGroup({
    this.naptanIdReference,
    this.stationAtcoCode,
    this.lineIdentifier,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'naptanIdReference': naptanIdReference,
      'stationAtcoCode': stationAtcoCode,
      'lineIdentifier': lineIdentifier,
    };
  }

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

  static List<LineGroup> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineGroup>()
        : json.map((value) => LineGroup.fromJson(value)).toList();
  }

  static Map<String, LineGroup> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineGroup>()
        : json.map((key, value) => MapEntry(key, LineGroup.fromJson(value)));
  }
}
