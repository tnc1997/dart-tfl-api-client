import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/digitisation/zone_fare.dart';
import 'package:tfl_api_client/src/models/fares/digitisation/zone_scope.dart';

part 'annual_travel_card_fare.g.dart';

@JsonSerializable()
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
  ) =>
      _$AnnualTravelCardFareFromJson(json);

  static List<AnnualTravelCardFare> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AnnualTravelCardFare.fromJson(value),
          )
          .toList();

  static Map<String, AnnualTravelCardFare> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AnnualTravelCardFare.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AnnualTravelCardFareToJson(this);
}
