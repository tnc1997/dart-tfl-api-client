// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_match.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VehicleMatch _$VehicleMatchFromJson(Map<String, dynamic> json) {
  return VehicleMatch(
    vrm: json['vrm'] as String?,
    type: json['type'] as String?,
    make: json['make'] as String?,
    model: json['model'] as String?,
    colour: json['colour'] as String?,
    compliance: json['compliance'] as String?,
  );
}

Map<String, dynamic> _$VehicleMatchToJson(VehicleMatch instance) =>
    <String, dynamic>{
      'vrm': instance.vrm,
      'type': instance.type,
      'make': instance.make,
      'model': instance.model,
      'colour': instance.colour,
      'compliance': instance.compliance,
    };
