class DisruptedPoint {
  String atcoCode;

  DateTime fromDate;

  DateTime toDate;

  String description;

  String commonName;

  String type;

  String mode;

  String stationAtcoCode;

  String appearance;

  String additionalInformation;

  DisruptedPoint();

  @override
  String toString() {
    return 'DisruptedPoint[atcoCode=$atcoCode, fromDate=$fromDate, toDate=$toDate, description=$description, commonName=$commonName, type=$type, mode=$mode, stationAtcoCode=$stationAtcoCode, appearance=$appearance, additionalInformation=$additionalInformation, ]';
  }

  DisruptedPoint.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    atcoCode = json['atcoCode'];
    fromDate =
        json['fromDate'] == null ? null : DateTime.parse(json['fromDate']);
    toDate = json['toDate'] == null ? null : DateTime.parse(json['toDate']);
    description = json['description'];
    commonName = json['commonName'];
    type = json['type'];
    mode = json['mode'];
    stationAtcoCode = json['stationAtcoCode'];
    appearance = json['appearance'];
    additionalInformation = json['additionalInformation'];
  }

  Map<String, dynamic> toJson() {
    return {
      'atcoCode': atcoCode,
      'fromDate': fromDate == null ? '' : fromDate.toUtc().toIso8601String(),
      'toDate': toDate == null ? '' : toDate.toUtc().toIso8601String(),
      'description': description,
      'commonName': commonName,
      'type': type,
      'mode': mode,
      'stationAtcoCode': stationAtcoCode,
      'appearance': appearance,
      'additionalInformation': additionalInformation
    };
  }

  static List<DisruptedPoint> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DisruptedPoint>()
        : json.map((value) => DisruptedPoint.fromJson(value)).toList();
  }

  static Map<String, DisruptedPoint> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, DisruptedPoint>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DisruptedPoint.fromJson(value));
    }
    return map;
  }
}
