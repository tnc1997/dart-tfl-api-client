import 'package:json_annotation/json_annotation.dart';

import 'zone_fare.dart';
import 'zone_scope.dart';

part 'travelcard_price.g.dart';

@JsonSerializable()
class TravelcardPrice {
  String? fareType;
  ZoneScope? journeyZoneScope;
  ZoneFare? dayOffPeak;
  ZoneFare? dayAnytime;
  ZoneFare? weekly;
  ZoneFare? monthly;
  ZoneFare? annual;

  TravelcardPrice({
    this.fareType,
    this.journeyZoneScope,
    this.dayOffPeak,
    this.dayAnytime,
    this.weekly,
    this.monthly,
    this.annual,
  });

  factory TravelcardPrice.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$TravelcardPriceFromJson(json);

  static List<TravelcardPrice> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => TravelcardPrice.fromJson(value),
          )
          .toList();

  static Map<String, TravelcardPrice> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          TravelcardPrice.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$TravelcardPriceToJson(this);
}
