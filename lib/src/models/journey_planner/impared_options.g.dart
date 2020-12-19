// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'impared_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ImparedOptions _$ImparedOptionsFromJson(Map<String, dynamic> json) {
  return ImparedOptions(
    lowPlatformVehicle: json['lowPlatformVehicle'] as bool?,
    noEscalators: json['noEscalators'] as bool?,
    noElevators: json['noElevators'] as bool?,
    noSolidStairs: json['noSolidStairs'] as bool?,
    needElevatedPlatform: json['needElevatedPlatform'] as bool?,
  );
}

Map<String, dynamic> _$ImparedOptionsToJson(ImparedOptions instance) =>
    <String, dynamic>{
      'lowPlatformVehicle': instance.lowPlatformVehicle,
      'noEscalators': instance.noEscalators,
      'noElevators': instance.noElevators,
      'noSolidStairs': instance.noSolidStairs,
      'needElevatedPlatform': instance.needElevatedPlatform,
    };
