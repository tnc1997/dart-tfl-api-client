// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'charge_connector_occupancy.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChargeConnectorOccupancy _$ChargeConnectorOccupancyFromJson(
    Map<String, dynamic> json) {
  return ChargeConnectorOccupancy(
    id: json['id'] as int?,
    sourceSystemPlaceId: json['sourceSystemPlaceId'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$ChargeConnectorOccupancyToJson(
        ChargeConnectorOccupancy instance) =>
    <String, dynamic>{
      'id': instance.id,
      'sourceSystemPlaceId': instance.sourceSystemPlaceId,
      'status': instance.status,
    };
