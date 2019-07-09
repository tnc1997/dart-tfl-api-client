import './journey_fare_tap_details.dart';

class JourneyFareTap {
  String atcoCode;

  JourneyFareTapDetails tapDetails;

  JourneyFareTap();

  @override
  String toString() {
    return 'FareTap[atcoCode=$atcoCode, tapDetails=$tapDetails, ]';
  }

  JourneyFareTap.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    atcoCode = json['atcoCode'];
    tapDetails = new JourneyFareTapDetails.fromJson(json['tapDetails']);
  }

  Map<String, dynamic> toJson() {
    return {'atcoCode': atcoCode, 'tapDetails': tapDetails};
  }

  static List<JourneyFareTap> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<JourneyFareTap>()
        : json.map((value) => new JourneyFareTap.fromJson(value)).toList();
  }

  static Map<String, JourneyFareTap> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JourneyFareTap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new JourneyFareTap.fromJson(value));
    }
    return map;
  }
}
