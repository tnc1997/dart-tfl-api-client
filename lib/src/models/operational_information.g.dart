// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operational_information.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OperationalInformation _$OperationalInformationFromJson(
    Map<String, dynamic> json) {
  return OperationalInformation(
    direction: json['direction'] as String?,
    lineId: json['lineId'] as String?,
  );
}

Map<String, dynamic> _$OperationalInformationToJson(
        OperationalInformation instance) =>
    <String, dynamic>{
      'direction': instance.direction,
      'lineId': instance.lineId,
    };
