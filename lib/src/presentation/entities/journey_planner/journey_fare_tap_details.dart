import '../../../internal/serializable.dart';

class JourneyFareTapDetails implements Serializable {
  String modeType;

  String validationType;

  String hostDeviceType;

  String busRouteId;

  int nationalLocationCode;

  DateTime tapTimestamp;

  JourneyFareTapDetails({
    this.modeType,
    this.validationType,
    this.hostDeviceType,
    this.busRouteId,
    this.nationalLocationCode,
    this.tapTimestamp,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'modeType': modeType,
      'validationType': validationType,
      'hostDeviceType': hostDeviceType,
      'busRouteId': busRouteId,
      'nationalLocationCode': nationalLocationCode,
      'tapTimestamp':
          tapTimestamp == null ? '' : tapTimestamp.toUtc().toIso8601String(),
    };
  }

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

  static List<JourneyFareTapDetails> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyFareTapDetails>()
        : json.map((value) => JourneyFareTapDetails.fromJson(value)).toList();
  }

  static Map<String, JourneyFareTapDetails> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyFareTapDetails>()
        : json.map((key, value) =>
            MapEntry(key, JourneyFareTapDetails.fromJson(value)));
  }
}
