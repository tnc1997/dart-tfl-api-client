// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Mode _$ModeFromJson(Map<String, dynamic> json) {
  return Mode(
      isTflService: json['isTflService'] as bool,
      isFarePaying: json['isFarePaying'] as bool,
      isScheduledService: json['isScheduledService'] as bool,
      modeName: json['modeName'] as String);
}

Map<String, dynamic> _$ModeToJson(Mode instance) => <String, dynamic>{
      'isTflService': instance.isTflService,
      'isFarePaying': instance.isFarePaying,
      'isScheduledService': instance.isScheduledService,
      'modeName': instance.modeName
    };
