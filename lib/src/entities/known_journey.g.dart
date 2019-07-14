// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'known_journey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnownJourney _$KnownJourneyFromJson(Map<String, dynamic> json) {
  return KnownJourney(
      hour: json['hour'] as String,
      minute: json['minute'] as String,
      intervalId: json['intervalId'] as int);
}

Map<String, dynamic> _$KnownJourneyToJson(KnownJourney instance) =>
    <String, dynamic>{
      'hour': instance.hour,
      'minute': instance.minute,
      'intervalId': instance.intervalId
    };
