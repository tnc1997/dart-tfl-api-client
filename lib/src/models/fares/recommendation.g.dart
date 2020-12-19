// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommendation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Recommendation _$RecommendationFromJson(Map<String, dynamic> json) {
  return Recommendation(
    id: json['id'] as int?,
    rule: json['rule'] as int?,
    rank: json['rank'] as int?,
    fareType: json['fareType'] as String?,
    product: json['product'] as String?,
    ticketType: json['ticketType'] as String?,
    ticketTime: json['ticketTime'] as String?,
    productType: json['productType'] as String?,
    discountCard: json['discountCard'] as String?,
    zones: json['zones'] as String?,
    cost: json['cost'] as String?,
    priceDescription: json['priceDescription'] as String?,
    priceComparison: json['priceComparison'] as String?,
    recommendedTopUp: json['recommendedTopUp'] as String?,
    notes: (json['notes'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    keyFeatures: (json['keyFeatures'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    gettingYourTicket: (json['gettingYourTicket'] as List<dynamic>?)
        ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
        .toList(),
    singleFare: (json['singleFare'] as num?)?.toDouble(),
  );
}

Map<String, dynamic> _$RecommendationToJson(Recommendation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'rule': instance.rule,
      'rank': instance.rank,
      'fareType': instance.fareType,
      'product': instance.product,
      'ticketType': instance.ticketType,
      'ticketTime': instance.ticketTime,
      'productType': instance.productType,
      'discountCard': instance.discountCard,
      'zones': instance.zones,
      'cost': instance.cost,
      'priceDescription': instance.priceDescription,
      'priceComparison': instance.priceComparison,
      'recommendedTopUp': instance.recommendedTopUp,
      'notes': instance.notes,
      'keyFeatures': instance.keyFeatures,
      'gettingYourTicket': instance.gettingYourTicket,
      'singleFare': instance.singleFare,
    };
