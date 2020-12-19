// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_transport_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PublicTransportOptions _$PublicTransportOptionsFromJson(
    Map<String, dynamic> json) {
  return PublicTransportOptions(
    maxChanges: json['maxChanges'] as int?,
    routeType: json['routeType'] as String?,
  );
}

Map<String, dynamic> _$PublicTransportOptionsToJson(
        PublicTransportOptions instance) =>
    <String, dynamic>{
      'maxChanges': instance.maxChanges,
      'routeType': instance.routeType,
    };
