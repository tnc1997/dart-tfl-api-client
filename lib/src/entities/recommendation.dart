import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/message.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'recommendation.g.dart';

@JsonSerializable()
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

  factory Recommendation.fromJson(Map<String, dynamic> json) {
    return _$RecommendationFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RecommendationToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
