import '../message.dart';

class Recommendation {
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

  Recommendation();

  @override
  String toString() {
    return 'Recommendation[id=$id, rule=$rule, rank=$rank, fareType=$fareType, product=$product, ticketType=$ticketType, ticketTime=$ticketTime, productType=$productType, discountCard=$discountCard, zones=$zones, cost=$cost, priceDescription=$priceDescription, priceComparison=$priceComparison, recommendedTopUp=$recommendedTopUp, notes=$notes, keyFeatures=$keyFeatures, gettingYourTicket=$gettingYourTicket, singleFare=$singleFare, ]';
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
      'singleFare': singleFare
    };
  }

  static List<Recommendation> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Recommendation>()
        : json.map((value) => new Recommendation.fromJson(value)).toList();
  }

  static Map<String, Recommendation> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Recommendation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Recommendation.fromJson(value));
    }
    return map;
  }
}
