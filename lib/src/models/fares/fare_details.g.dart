// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareDetails _$FareDetailsFromJson(Map<String, dynamic> json) {
  return FareDetails(
    boundsId: json['boundsId'] as int?,
    startDate: json['startDate'] == null
        ? null
        : DateTime.parse(json['startDate'] as String),
    endDate: json['endDate'] == null
        ? null
        : DateTime.parse(json['endDate'] as String),
    mode: json['mode'] as String?,
    passengerType: json['passengerType'] as String?,
    contactlessPaygOnlyFare: json['contactlessPaygOnlyFare'] as bool?,
    from: json['from'] as String?,
    to: json['to'] as String?,
    fromStation: json['fromStation'] as String?,
    toStation: json['toStation'] as String?,
    via: json['via'] as String?,
    routeCode: json['routeCode'] as String?,
    displayName: json['displayName'] as String?,
    displayOrder: json['displayOrder'] as int?,
    routeDescription: json['routeDescription'] as String?,
    validatorInformation: json['validatorInformation'] as String?,
    operator: json['operator'] as String?,
    specialFare: json['specialFare'] as bool?,
    throughFare: json['throughFare'] as bool?,
    isTour: json['isTour'] as bool?,
    ticketsAvailable: (json['ticketsAvailable'] as List<dynamic>?)
        ?.map((e) => Ticket.fromJson(e as Map<String, dynamic>))
        .toList(),
    messages: (json['messages'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$FareDetailsToJson(FareDetails instance) =>
    <String, dynamic>{
      'boundsId': instance.boundsId,
      'startDate': instance.startDate?.toIso8601String(),
      'endDate': instance.endDate?.toIso8601String(),
      'mode': instance.mode,
      'passengerType': instance.passengerType,
      'contactlessPaygOnlyFare': instance.contactlessPaygOnlyFare,
      'from': instance.from,
      'to': instance.to,
      'fromStation': instance.fromStation,
      'toStation': instance.toStation,
      'via': instance.via,
      'routeCode': instance.routeCode,
      'displayName': instance.displayName,
      'displayOrder': instance.displayOrder,
      'routeDescription': instance.routeDescription,
      'validatorInformation': instance.validatorInformation,
      'operator': instance.operator,
      'specialFare': instance.specialFare,
      'throughFare': instance.throughFare,
      'isTour': instance.isTour,
      'ticketsAvailable': instance.ticketsAvailable,
      'messages': instance.messages,
    };
