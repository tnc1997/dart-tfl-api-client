import 'zone_fare.dart';
import 'zone_scope.dart';

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
  ) {
    return ContactlessPaygCap(
      fareType: json['fareType'] as String?,
      monSunCap: json['monSunCap'] == null
          ? null
          : ZoneFare.fromJson(json['monSunCap'] as Map<String, dynamic>),
      dailyAnytimeCap: json['dailyAnytimeCap'] == null
          ? null
          : ZoneFare.fromJson(json['dailyAnytimeCap'] as Map<String, dynamic>),
      dailyOffPeakCap: json['dailyOffPeakCap'] == null
          ? null
          : ZoneFare.fromJson(json['dailyOffPeakCap'] as Map<String, dynamic>),
      journeyZoneScope: json['journeyZoneScope'] == null
          ? null
          : ZoneScope.fromJson(
              json['journeyZoneScope'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'fareType': fareType,
      'monSunCap': monSunCap,
      'dailyAnytimeCap': dailyAnytimeCap,
      'dailyOffPeakCap': dailyOffPeakCap,
      'journeyZoneScope': journeyZoneScope,
    };
  }
}
