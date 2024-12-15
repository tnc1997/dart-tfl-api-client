import 'message.dart';

class Recommendation {
  int? id;
  int? rule;
  int? rank;
  String? fareType;
  String? product;
  String? ticketType;
  String? ticketTime;
  String? productType;
  String? discountCard;
  String? zones;
  String? cost;
  String? priceDescription;
  String? priceComparison;
  String? recommendedTopUp;
  List<Message>? notes;
  List<Message>? keyFeatures;
  List<Message>? gettingYourTicket;
  double? singleFare;

  Recommendation({
    this.id,
    this.rule,
    this.rank,
    this.fareType,
    this.product,
    this.ticketType,
    this.ticketTime,
    this.productType,
    this.discountCard,
    this.zones,
    this.cost,
    this.priceDescription,
    this.priceComparison,
    this.recommendedTopUp,
    this.notes,
    this.keyFeatures,
    this.gettingYourTicket,
    this.singleFare,
  });

  factory Recommendation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Recommendation(
      id: (json['id'] as num?)?.toInt(),
      rule: (json['rule'] as num?)?.toInt(),
      rank: (json['rank'] as num?)?.toInt(),
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

  Map<String, dynamic> toJson() => {
        'id': id,
        'rule': rule,
        'rank': rank,
        'fareType': fareType,
        'product': product,
        'ticketType': ticketType,
        'ticketTime': ticketTime,
        'productType': productType,
        'discountCard': discountCard,
        'zones': zones,
        'cost': cost,
        'priceDescription': priceDescription,
        'priceComparison': priceComparison,
        'recommendedTopUp': recommendedTopUp,
        'notes': notes,
        'keyFeatures': keyFeatures,
        'gettingYourTicket': gettingYourTicket,
        'singleFare': singleFare,
      };
}
