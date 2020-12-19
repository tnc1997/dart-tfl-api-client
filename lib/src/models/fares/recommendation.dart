import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/message.dart';

part 'recommendation.g.dart';

@JsonSerializable()
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
  ) =>
      _$RecommendationFromJson(json);

  static List<Recommendation> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Recommendation.fromJson(value),
          )
          .toList();

  static Map<String, Recommendation> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Recommendation.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RecommendationToJson(this);
}
