class RecommendationRequest {
  String? period;
  bool? peak;
  String? zones;
  bool? busOnly;
  String? ageGroup;
  String? discountCard;
  String? railcard;
  bool? photocard;
  bool? freeBus;

  RecommendationRequest({
    this.period,
    this.peak,
    this.zones,
    this.busOnly,
    this.ageGroup,
    this.discountCard,
    this.railcard,
    this.photocard,
    this.freeBus,
  });

  factory RecommendationRequest.fromJson(
    Map<String, dynamic> json,
  ) {
    return RecommendationRequest(
      period: json['period'] as String?,
      peak: json['peak'] as bool?,
      zones: json['zones'] as String?,
      busOnly: json['busOnly'] as bool?,
      ageGroup: json['ageGroup'] as String?,
      discountCard: json['discountCard'] as String?,
      railcard: json['railcard'] as String?,
      photocard: json['photocard'] as bool?,
      freeBus: json['freebus'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'period': period,
      'peak': peak,
      'zones': zones,
      'busOnly': busOnly,
      'ageGroup': ageGroup,
      'discountCard': discountCard,
      'railcard': railcard,
      'photocard': photocard,
      'freebus': freeBus,
    };
  }
}
