import './journey_fare_tap.dart';

class JourneyFareDetails {
  int lowZone;

  int highZone;

  int cost;

  String chargeProfileName;

  bool isHopperFare;

  String chargeLevel;

  int peak;

  int offPeak;

  List<JourneyFareTap> taps;

  JourneyFareDetails();

  @override
  String toString() {
    return 'Fare[lowZone=$lowZone, highZone=$highZone, cost=$cost, chargeProfileName=$chargeProfileName, isHopperFare=$isHopperFare, chargeLevel=$chargeLevel, peak=$peak, offPeak=$offPeak, taps=$taps, ]';
  }

  JourneyFareDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lowZone = json['lowZone'];
    highZone = json['highZone'];
    cost = json['cost'];
    chargeProfileName = json['chargeProfileName'];
    isHopperFare = json['isHopperFare'];
    chargeLevel = json['chargeLevel'];
    peak = json['peak'];
    offPeak = json['offPeak'];
    taps = JourneyFareTap.listFromJson(json['taps']);
  }

  Map<String, dynamic> toJson() {
    return {
      'lowZone': lowZone,
      'highZone': highZone,
      'cost': cost,
      'chargeProfileName': chargeProfileName,
      'isHopperFare': isHopperFare,
      'chargeLevel': chargeLevel,
      'peak': peak,
      'offPeak': offPeak,
      'taps': taps
    };
  }

  static List<JourneyFareDetails> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<JourneyFareDetails>()
        : json.map((value) => new JourneyFareDetails.fromJson(value)).toList();
  }

  static Map<String, JourneyFareDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JourneyFareDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new JourneyFareDetails.fromJson(value));
    }
    return map;
  }
}
