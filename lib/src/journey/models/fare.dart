import 'fare_tap.dart';

class Fare2 {
  int? lowZone;
  int? highZone;
  int? cost;
  String? chargeProfileName;
  bool? isHopperFare;
  String? chargeLevel;
  int? peak;
  int? offPeak;
  List<FareTap>? taps;

  Fare2({
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

  factory Fare2.fromJson(
    Map<String, dynamic> json,
  ) {
    return Fare2(
      lowZone: (json['lowZone'] as num?)?.toInt(),
      highZone: (json['highZone'] as num?)?.toInt(),
      cost: (json['cost'] as num?)?.toInt(),
      chargeProfileName: json['chargeProfileName'] as String?,
      isHopperFare: json['isHopperFare'] as bool?,
      chargeLevel: json['chargeLevel'] as String?,
      peak: (json['peak'] as num?)?.toInt(),
      offPeak: (json['offPeak'] as num?)?.toInt(),
      taps: (json['taps'] as List<dynamic>?)
          ?.map((e) => FareTap.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static List<Fare2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Fare2.fromJson(value),
          )
          .toList();

  static Map<String, Fare2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Fare2.fromJson(value),
        ),
      );

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
}
