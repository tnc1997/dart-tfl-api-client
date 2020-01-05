import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/recommendation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'recommendation_response.g.dart';

@JsonSerializable()
class RecommendationResponse implements Serializable {
  List<Recommendation> recommendations;

  RecommendationResponse({
    this.recommendations,
  });

  factory RecommendationResponse.fromJson(Map<String, dynamic> json) {
    return _$RecommendationResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RecommendationResponseToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
