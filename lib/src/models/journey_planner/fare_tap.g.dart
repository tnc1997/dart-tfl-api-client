// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_tap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareTap _$FareTapFromJson(Map<String, dynamic> json) {
  return FareTap(
    atcoCode: json['atcoCode'] as String?,
    tapDetails: json['tapDetails'] == null
        ? null
        : FareTapDetails.fromJson(json['tapDetails'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$FareTapToJson(FareTap instance) => <String, dynamic>{
      'atcoCode': instance.atcoCode,
      'tapDetails': instance.tapDetails,
    };
