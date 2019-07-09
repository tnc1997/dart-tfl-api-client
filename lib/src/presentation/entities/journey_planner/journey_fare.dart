import './journey_fare_details.dart';
import './journey_fare_caveat.dart';

class JourneyFare {
  int totalCost;

  List<JourneyFareDetails> fares;

  List<JourneyFareCaveat> caveats;

  JourneyFare();

  @override
  String toString() {
    return 'JourneyFare[totalCost=$totalCost, fares=$fares, caveats=$caveats, ]';
  }

  JourneyFare.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    totalCost = json['totalCost'];
    fares = JourneyFareDetails.listFromJson(json['fares']);
    caveats = JourneyFareCaveat.listFromJson(json['caveats']);
  }

  Map<String, dynamic> toJson() {
    return {'totalCost': totalCost, 'fares': fares, 'caveats': caveats};
  }

  static List<JourneyFare> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<JourneyFare>()
        : json.map((value) => new JourneyFare.fromJson(value)).toList();
  }

  static Map<String, JourneyFare> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, JourneyFare>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new JourneyFare.fromJson(value));
    }
    return map;
  }
}
