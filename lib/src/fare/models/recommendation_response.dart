import 'recommendation.dart';

class RecommendationResponse {
  List<Recommendation>? recommendations;

  RecommendationResponse({
    this.recommendations,
  });

  factory RecommendationResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return RecommendationResponse(
      recommendations: (json['recommendations'] as List<dynamic>?)
          ?.map((e) => Recommendation.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendations': recommendations,
    };
  }
}
