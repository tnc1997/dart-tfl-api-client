import 'zone_fare.dart';
import 'zone_scope.dart';

class AnnualTravelCardFare {
  int? priceYear;
  String? fareType;
  ZoneScope? journeyZoneScope;
  ZoneFare? dayOffPeak;
  ZoneFare? dayAnytime;
  ZoneFare? weekly;
  ZoneFare? monthly;
  ZoneFare? annual;

  AnnualTravelCardFare({
    this.priceYear,
    this.fareType,
    this.journeyZoneScope,
    this.dayOffPeak,
    this.dayAnytime,
    this.weekly,
    this.monthly,
    this.annual,
  });

  factory AnnualTravelCardFare.fromJson(
    Map<String, dynamic> json,
  ) {
    return AnnualTravelCardFare(
      priceYear: (json['priceYear'] as num?)?.toInt(),
      fareType: json['fareType'] as String?,
      journeyZoneScope: json['journeyZoneScope'] == null
          ? null
          : ZoneScope.fromJson(
              json['journeyZoneScope'] as Map<String, dynamic>),
      dayOffPeak: json['dayOffPeak'] == null
          ? null
          : ZoneFare.fromJson(json['dayOffPeak'] as Map<String, dynamic>),
      dayAnytime: json['dayAnytime'] == null
          ? null
          : ZoneFare.fromJson(json['dayAnytime'] as Map<String, dynamic>),
      weekly: json['weekly'] == null
          ? null
          : ZoneFare.fromJson(json['weekly'] as Map<String, dynamic>),
      monthly: json['monthly'] == null
          ? null
          : ZoneFare.fromJson(json['monthly'] as Map<String, dynamic>),
      annual: json['annual'] == null
          ? null
          : ZoneFare.fromJson(json['annual'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'priceYear': priceYear,
      'fareType': fareType,
      'journeyZoneScope': journeyZoneScope,
      'dayOffPeak': dayOffPeak,
      'dayAnytime': dayAnytime,
      'weekly': weekly,
      'monthly': monthly,
      'annual': annual,
    };
  }
}
