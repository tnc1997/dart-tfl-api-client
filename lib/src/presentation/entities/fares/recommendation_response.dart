import './recommendation.dart';
import '../../../internal/serializable.dart';

class RecommendationResponse implements Serializable {
  List<Recommendation> recommendations;

  RecommendationResponse({
    this.recommendations,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'recommendations': recommendations,
    };
  }

  @override
  String toString() {
    return 'RecommendationResponse[recommendations=$recommendations]';
  }

  RecommendationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    recommendations = Recommendation.listFromJson(json['recommendations']);
  }

  static List<RecommendationResponse> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<RecommendationResponse>()
        : json.map((value) => RecommendationResponse.fromJson(value)).toList();
  }

  static Map<String, RecommendationResponse> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, RecommendationResponse>()
        : json.map((key, value) =>
            MapEntry(key, RecommendationResponse.fromJson(value)));
  }
}
