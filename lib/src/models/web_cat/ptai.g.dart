// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ptai.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Ptai _$PtaiFromJson(Map<String, dynamic> json) {
  return Ptai(
    ptalGridId: json['ptalGridId'] as int?,
    x: json['x'] as int?,
    y: json['y'] as int?,
    node: json['node'] as int?,
    stopName: json['stopName'] as String?,
    mode: json['mode'] as String?,
    routeCode: json['routeCode'] as String?,
    route: json['route'] as String?,
    distm: (json['distm'] as num?)?.toDouble(),
    vehiclesPerHour: (json['vehiclesPerHour'] as num?)?.toDouble(),
    weight: (json['weight'] as num?)?.toDouble(),
    walkTime: (json['walkTime'] as num?)?.toDouble(),
    swt: (json['swt'] as num?)?.toDouble(),
    tat: (json['tat'] as num?)?.toDouble(),
    edf: (json['edf'] as num?)?.toDouble(),
    aI: (json['aI'] as num?)?.toDouble(),
    ptalValue: json['ptalValue'] as String?,
  );
}

Map<String, dynamic> _$PtaiToJson(Ptai instance) => <String, dynamic>{
      'ptalGridId': instance.ptalGridId,
      'x': instance.x,
      'y': instance.y,
      'node': instance.node,
      'stopName': instance.stopName,
      'mode': instance.mode,
      'routeCode': instance.routeCode,
      'route': instance.route,
      'distm': instance.distm,
      'vehiclesPerHour': instance.vehiclesPerHour,
      'weight': instance.weight,
      'walkTime': instance.walkTime,
      'swt': instance.swt,
      'tat': instance.tat,
      'edf': instance.edf,
      'aI': instance.aI,
      'ptalValue': instance.ptalValue,
    };
