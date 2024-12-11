// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Fare1 _$Fare1FromJson(Map<String, dynamic> json) {
  return Fare1(
    id: json['id'] as int?,
    passengerType: json['passengerType'] as String?,
    validFrom: json['validFrom'] == null
        ? null
        : DateTime.parse(json['validFrom'] as String),
    validUntil: json['validUntil'] == null
        ? null
        : DateTime.parse(json['validUntil'] as String),
    ticketTime: json['ticketTime'] as String?,
    ticketType: json['ticketType'] as String?,
    cost: json['cost'] as String?,
    cap: (json['cap'] as num?)?.toDouble(),
    description: json['description'] as String?,
    zone: json['zone'] as String?,
    mode: json['mode'] as String?,
  );
}

Map<String, dynamic> _$Fare1ToJson(Fare1 instance) => <String, dynamic>{
      'id': instance.id,
      'passengerType': instance.passengerType,
      'validFrom': instance.validFrom?.toIso8601String(),
      'validUntil': instance.validUntil?.toIso8601String(),
      'ticketTime': instance.ticketTime,
      'ticketType': instance.ticketType,
      'cost': instance.cost,
      'cap': instance.cap,
      'description': instance.description,
      'zone': instance.zone,
      'mode': instance.mode,
    };
