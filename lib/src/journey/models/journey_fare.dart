import 'fare.dart';
import 'fare_caveat.dart';

class JourneyFare {
  int? totalCost;
  List<Fare2>? fares;
  List<FareCaveat>? caveats;

  JourneyFare({
    this.totalCost,
    this.fares,
    this.caveats,
  });

  factory JourneyFare.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyFare(
      totalCost: (json['totalCost'] as num?)?.toInt(),
      fares: (json['fares'] as List<dynamic>?)
          ?.map((e) => Fare2.fromJson(e as Map<String, dynamic>))
          .toList(),
      caveats: (json['caveats'] as List<dynamic>?)
          ?.map((e) => FareCaveat.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'totalCost': totalCost,
      'fares': fares,
      'caveats': caveats,
    };
  }
}
