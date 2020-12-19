import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/recommendation.dart';

part 'recommendation_response.g.dart';

@JsonSerializable()
class RecommendationResponse {
  List<Recommendation>? recommendations;

  RecommendationResponse({
    this.recommendations,
  });

  factory RecommendationResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RecommendationResponseFromJson(json);

  static List<RecommendationResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RecommendationResponse.fromJson(value),
          )
          .toList();

  static Map<String, RecommendationResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RecommendationResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RecommendationResponseToJson(this);
}
