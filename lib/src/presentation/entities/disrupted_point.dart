import '../../internal/serializable.dart';

class DisruptedPoint implements Serializable {
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

  DisruptedPoint({
    this.atcoCode,
    this.fromDate,
    this.toDate,
    this.description,
    this.commonName,
    this.type,
    this.mode,
    this.stationAtcoCode,
    this.appearance,
    this.additionalInformation,
  });

  @override
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
      'additionalInformation': additionalInformation,
    };
  }

  @override
  String toString() {
    return 'DisruptedPoint[atcoCode=$atcoCode, fromDate=$fromDate, toDate=$toDate, description=$description, commonName=$commonName, type=$type, mode=$mode, stationAtcoCode=$stationAtcoCode, appearance=$appearance, additionalInformation=$additionalInformation]';
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

  static List<DisruptedPoint> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<DisruptedPoint>()
        : json.map((value) => DisruptedPoint.fromJson(value)).toList();
  }

  static Map<String, DisruptedPoint> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, DisruptedPoint>()
        : json
            .map((key, value) => MapEntry(key, DisruptedPoint.fromJson(value)));
  }
}
