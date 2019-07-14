// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fare_bounds.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FareBounds _$FareBoundsFromJson(Map<String, dynamic> json) {
  return FareBounds(
      id: json['id'] as int,
      from: json['from'] as String,
      to: json['to'] as String,
      via: json['via'] as String,
      routeCode: json['routeCode'] as String,
      description: json['description'] as String,
      displayName: json['displayName'] as String,
      operator: json['operator'] as String,
      displayOrder: json['displayOrder'] as int,
      isPopularFare: json['isPopularFare'] as bool,
      isPopularTravelCard: json['isPopularTravelCard'] as bool,
      isTour: json['isTour'] as bool,
      messages: (json['messages'] as List)
          ?.map((e) =>
              e == null ? null : Message.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$FareBoundsToJson(FareBounds instance) =>
    <String, dynamic>{
      'id': instance.id,
      'from': instance.from,
      'to': instance.to,
      'via': instance.via,
      'routeCode': instance.routeCode,
      'description': instance.description,
      'displayName': instance.displayName,
      'operator': instance.operator,
      'displayOrder': instance.displayOrder,
      'isPopularFare': instance.isPopularFare,
      'isPopularTravelCard': instance.isPopularTravelCard,
      'isTour': instance.isTour,
      'messages': instance.messages
    };
