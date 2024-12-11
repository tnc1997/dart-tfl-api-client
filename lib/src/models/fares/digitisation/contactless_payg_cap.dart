import 'package:json_annotation/json_annotation.dart';

import 'zone_fare.dart';
import 'zone_scope.dart';

part 'contactless_payg_cap.g.dart';

@JsonSerializable()
class ContactlessPaygCap {
  String? fareType;
  ZoneFare? monSunCap;
  ZoneFare? dailyAnytimeCap;
  ZoneFare? dailyOffPeakCap;
  ZoneScope? journeyZoneScope;

  ContactlessPaygCap({
    this.fareType,
    this.monSunCap,
    this.dailyAnytimeCap,
    this.dailyOffPeakCap,
    this.journeyZoneScope,
  });

  factory ContactlessPaygCap.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ContactlessPaygCapFromJson(json);

  static List<ContactlessPaygCap> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ContactlessPaygCap.fromJson(value),
          )
          .toList();

  static Map<String, ContactlessPaygCap> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ContactlessPaygCap.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ContactlessPaygCapToJson(this);
}
