import 'zone_scope.dart';

class ZoneFare {
  ZoneScope? applicableFareZoneInfo;
  double? fare;

  ZoneFare({
    this.applicableFareZoneInfo,
    this.fare,
  });

  factory ZoneFare.fromJson(
    Map<String, dynamic> json,
  ) {
    return ZoneFare(
      applicableFareZoneInfo: json['applicableFareZoneInfo'] == null
          ? null
          : ZoneScope.fromJson(
              json['applicableFareZoneInfo'] as Map<String, dynamic>),
      fare: (json['fare'] as num?)?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'applicableFareZoneInfo': applicableFareZoneInfo,
      'fare': fare,
    };
  }
}
