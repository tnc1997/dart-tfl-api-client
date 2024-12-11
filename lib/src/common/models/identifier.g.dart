// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identifier.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Identifier _$IdentifierFromJson(Map<String, dynamic> json) {
  return Identifier(
    id: json['id'] as String?,
    name: json['name'] as String?,
    uri: json['uri'] as String?,
    fullName: json['fullName'] as String?,
    type: json['type'] as String?,
    crowding: json['crowding'] == null
        ? null
        : Crowding.fromJson(json['crowding'] as Map<String, dynamic>),
    routeType: json['routeType'] as String?,
    status: json['status'] as String?,
  );
}

Map<String, dynamic> _$IdentifierToJson(Identifier instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'uri': instance.uri,
      'fullName': instance.fullName,
      'type': instance.type,
      'crowding': instance.crowding,
      'routeType': instance.routeType,
      'status': instance.status,
    };
