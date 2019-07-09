import './journey_fare_details.dart';
import './journey_fare_caveat.dart';
import '../../../internal/serializable.dart';

class JourneyFare implements Serializable {
  int totalCost;

  List<JourneyFareDetails> fares;

  List<JourneyFareCaveat> caveats;

  JourneyFare({
    this.totalCost,
    this.fares,
    this.caveats,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'totalCost': totalCost,
      'fares': fares,
      'caveats': caveats,
    };
  }

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

  static List<JourneyFare> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyFare>()
        : json.map((value) => JourneyFare.fromJson(value)).toList();
  }

  static Map<String, JourneyFare> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyFare>()
        : json.map((key, value) => MapEntry(key, JourneyFare.fromJson(value)));
  }
}
