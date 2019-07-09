import './journey_fare_tap.dart';
import '../../../internal/serializable.dart';

class JourneyFareDetails implements Serializable {
  int lowZone;

  int highZone;

  int cost;

  String chargeProfileName;

  bool isHopperFare;

  String chargeLevel;

  int peak;

  int offPeak;

  List<JourneyFareTap> taps;

  JourneyFareDetails({
    this.lowZone,
    this.highZone,
    this.cost,
    this.chargeProfileName,
    this.isHopperFare,
    this.chargeLevel,
    this.peak,
    this.offPeak,
    this.taps,
  });

  @override
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
      'taps': taps,
    };
  }

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

  static List<JourneyFareDetails> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyFareDetails>()
        : json.map((value) => JourneyFareDetails.fromJson(value)).toList();
  }

  static Map<String, JourneyFareDetails> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyFareDetails>()
        : json.map(
            (key, value) => MapEntry(key, JourneyFareDetails.fromJson(value)));
  }
}
