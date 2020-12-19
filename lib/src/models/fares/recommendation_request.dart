import 'package:json_annotation/json_annotation.dart';

part 'recommendation_request.g.dart';

@JsonSerializable()
class RecommendationRequest {
  String? period;
  bool? peak;
  String? zones;
  bool? busOnly;
  String? ageGroup;
  String? discountCard;
  String? railcard;
  bool? photocard;
  bool? freebus;

  RecommendationRequest({
    this.period,
    this.peak,
    this.zones,
    this.busOnly,
    this.ageGroup,
    this.discountCard,
    this.railcard,
    this.photocard,
    this.freebus,
  });

  factory RecommendationRequest.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendationRequestFromJson(json);

  static List<RecommendationRequest> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RecommendationRequest.fromJson(value),
          )
          .toList();

  static Map<String, RecommendationRequest> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RecommendationRequest.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RecommendationRequestToJson(this);
}
