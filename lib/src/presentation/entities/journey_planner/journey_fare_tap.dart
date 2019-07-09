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
    tapDetails = JourneyFareTapDetails.fromJson(json['tapDetails']);
  }

  Map<String, dynamic> toJson() {
    return {'atcoCode': atcoCode, 'tapDetails': tapDetails};
  }

  static List<JourneyFareTap> listFromJson(List<dynamic> json) {
    return json == null
        ? List<JourneyFareTap>()
        : json.map((value) => JourneyFareTap.fromJson(value)).toList();
  }

  static Map<String, JourneyFareTap> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, JourneyFareTap>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = JourneyFareTap.fromJson(value));
    }
    return map;
  }
}
