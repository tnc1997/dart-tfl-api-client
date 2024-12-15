import 'fare_station.dart';

class FareJourney {
  FareStation? fromStation;
  FareStation? toStation;

  FareJourney({
    this.fromStation,
    this.toStation,
  });

  factory FareJourney.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareJourney(
      fromStation: json['fromStation'] == null
          ? null
          : FareStation.fromJson(json['fromStation'] as Map<String, dynamic>),
      toStation: json['toStation'] == null
          ? null
          : FareStation.fromJson(json['toStation'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fromStation': fromStation,
      'toStation': toStation,
    };
  }
}
