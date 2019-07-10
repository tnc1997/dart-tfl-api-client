import '../message.dart';
import '../../../internal/serializable.dart';

class Recommendation implements Serializable {
  int id;

  int rule;

  int rank;

  String fareType;

  String product;

  String ticketType;

  String ticketTime;

  String productType;

  String discountCard;

  String zones;

  String cost;

  String priceDescription;

  String priceComparison;

  String recommendedTopUp;

  List<Message> notes;

  List<Message> keyFeatures;

  List<Message> gettingYourTicket;

  double singleFare;

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

  @override
  Map<String, dynamic> toJson() {
    return {
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

  @override
  String toString() {
    return 'Recommendation[id=$id, rule=$rule, rank=$rank, fareType=$fareType, product=$product, ticketType=$ticketType, ticketTime=$ticketTime, productType=$productType, discountCard=$discountCard, zones=$zones, cost=$cost, priceDescription=$priceDescription, priceComparison=$priceComparison, recommendedTopUp=$recommendedTopUp, notes=$notes, keyFeatures=$keyFeatures, gettingYourTicket=$gettingYourTicket, singleFare=$singleFare]';
  }

  Recommendation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    rule = json['rule'];
    rank = json['rank'];
    fareType = json['fareType'];
    product = json['product'];
    ticketType = json['ticketType'];
    ticketTime = json['ticketTime'];
    productType = json['productType'];
    discountCard = json['discountCard'];
    zones = json['zones'];
    cost = json['cost'];
    priceDescription = json['priceDescription'];
    priceComparison = json['priceComparison'];
    recommendedTopUp = json['recommendedTopUp'];
    notes = Message.listFromJson(json['notes']);
    keyFeatures = Message.listFromJson(json['keyFeatures']);
    gettingYourTicket = Message.listFromJson(json['gettingYourTicket']);
    singleFare = json['singleFare'];
  }

  static List<Recommendation> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Recommendation>()
        : json.map((value) => Recommendation.fromJson(value)).toList();
  }

  static Map<String, Recommendation> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Recommendation>()
        : json
            .map((key, value) => MapEntry(key, Recommendation.fromJson(value)));
  }
}
