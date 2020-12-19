// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zone_fare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ZoneFare _$ZoneFareFromJson(Map<String, dynamic> json) {
  return ZoneFare(
    applicableFareZoneInfo: json['applicableFareZoneInfo'] == null
        ? null
        : ZoneScope.fromJson(
            json['applicableFareZoneInfo'] as Map<String, dynamic>),
    fare: (json['fare'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$ZoneFareToJson(ZoneFare instance) => <String, dynamic>{
      'applicableFareZoneInfo': instance.applicableFareZoneInfo,
      'fare': instance.fare,
    };
