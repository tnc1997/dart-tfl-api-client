class JourneyFareTapDetails {
  String modeType;

  String validationType;

  String hostDeviceType;

  String busRouteId;

  int nationalLocationCode;

  DateTime tapTimestamp;

  JourneyFareTapDetails();

  @override
  String toString() {
    return 'FareTapDetails[modeType=$modeType, validationType=$validationType, hostDeviceType=$hostDeviceType, busRouteId=$busRouteId, nationalLocationCode=$nationalLocationCode, tapTimestamp=$tapTimestamp, ]';
  }

  JourneyFareTapDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modeType = json['modeType'];
    validationType = json['validationType'];
    hostDeviceType = json['hostDeviceType'];
    busRouteId = json['busRouteId'];
    nationalLocationCode = json['nationalLocationCode'];
    tapTimestamp = json['tapTimestamp'] == null
        ? null
        : DateTime.parse(json['tapTimestamp']);
  }

  Map<String, dynamic> toJson() {
    return {
      'modeType': modeType,
      'validationType': validationType,
      'hostDeviceType': hostDeviceType,
      'busRouteId': busRouteId,
      'nationalLocationCode': nationalLocationCode,
      'tapTimestamp':
          tapTimestamp == null ? '' : tapTimestamp.toUtc().toIso8601String()
    };
  }

  static List<JourneyFareTapDetails> listFromJson(List<dynamic> json) {
    return json == null
        ? List<JourneyFareTapDetails>()
        : json.map((value) => JourneyFareTapDetails.fromJson(value)).toList();
  }

  static Map<String, JourneyFareTapDetails> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, JourneyFareTapDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = JourneyFareTapDetails.fromJson(value));
    }
    return map;
  }
}
