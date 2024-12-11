// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subscription.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Subscription _$SubscriptionFromJson(Map<String, dynamic> json) {
  return Subscription(
    id: json['id'] as String?,
    connectionId: json['connectionId'] as String?,
    roomName: json['roomName'] as String?,
    naptanId: json['naptanId'] as String?,
    lineId: json['lineId'] as String?,
    source: json['source'] as String?,
    timestamp: json['timestamp'] == null
        ? null
        : DateTime.parse(json['timestamp'] as String),
    timeToLive: json['timeToLive'] == null
        ? null
        : DateTime.parse(json['timeToLive'] as String),
  );
}

Map<String, dynamic> _$SubscriptionToJson(Subscription instance) =>
    <String, dynamic>{
      'id': instance.id,
      'connectionId': instance.connectionId,
      'roomName': instance.roomName,
      'naptanId': instance.naptanId,
      'lineId': instance.lineId,
      'source': instance.source,
      'timestamp': instance.timestamp?.toIso8601String(),
      'timeToLive': instance.timeToLive?.toIso8601String(),
    };
