import './recommendation.dart';

class RecommendationResponse {
  List<Recommendation> recommendations;

  RecommendationResponse();

  @override
  String toString() {
    return 'RecommendationResponse[recommendations=$recommendations, ]';
  }

  RecommendationResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    recommendations = Recommendation.listFromJson(json['recommendations']);
  }

  Map<String, dynamic> toJson() {
    return {'recommendations': recommendations};
  }

  static List<RecommendationResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<RecommendationResponse>()
        : json.map((value) => RecommendationResponse.fromJson(value)).toList();
  }

  static Map<String, RecommendationResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, RecommendationResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = RecommendationResponse.fromJson(value));
    }
    return map;
  }
}
