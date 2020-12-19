import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/digitisation/zone_fare.dart';
import 'package:tfl_api_client/src/models/fares/digitisation/zone_scope.dart';

part 'annual_contactless_payg_cap.g.dart';

@JsonSerializable()
class AnnualContactlessPaygCap {
  int? priceYear;
  String? fareType;
  ZoneFare? monSunCap;
  ZoneFare? dailyAnytimeCap;
  ZoneFare? dailyOffPeakCap;
  ZoneScope? journeyZoneScope;

  AnnualContactlessPaygCap({
    this.priceYear,
    this.fareType,
    this.monSunCap,
    this.dailyAnytimeCap,
    this.dailyOffPeakCap,
    this.journeyZoneScope,
  });

  factory AnnualContactlessPaygCap.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$AnnualContactlessPaygCapFromJson(json);

  static List<AnnualContactlessPaygCap> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AnnualContactlessPaygCap.fromJson(value),
          )
          .toList();

  static Map<String, AnnualContactlessPaygCap> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AnnualContactlessPaygCap.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AnnualContactlessPaygCapToJson(this);
}
