// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Schedule _$ScheduleFromJson(Map<String, dynamic> json) {
  return Schedule(
      name: json['name'] as String,
      knownJourneys: (json['knownJourneys'] as List)
          ?.map((e) => e == null
              ? null
              : KnownJourney.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      firstJourney: json['firstJourney'] == null
          ? null
          : KnownJourney.fromJson(json['firstJourney'] as Map<String, dynamic>),
      lastJourney: json['lastJourney'] == null
          ? null
          : KnownJourney.fromJson(json['lastJourney'] as Map<String, dynamic>),
      periods: (json['periods'] as List)
          ?.map((e) =>
              e == null ? null : Period.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ScheduleToJson(Schedule instance) => <String, dynamic>{
      'name': instance.name,
      'knownJourneys': instance.knownJourneys,
      'firstJourney': instance.firstJourney,
      'lastJourney': instance.lastJourney,
      'periods': instance.periods
    };
