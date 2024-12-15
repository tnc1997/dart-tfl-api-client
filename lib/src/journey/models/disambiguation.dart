import 'disambiguation_option.dart';

class JourneyPlannerDisambiguation {
  List<JourneyPlannerDisambiguationOption>? disambiguationOptions;
  String? matchStatus;

  JourneyPlannerDisambiguation({
    this.disambiguationOptions,
    this.matchStatus,
  });

  factory JourneyPlannerDisambiguation.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerDisambiguation(
      disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
          ?.map((e) => JourneyPlannerDisambiguationOption.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      matchStatus: json['matchStatus'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'disambiguationOptions': disambiguationOptions,
      'matchStatus': matchStatus,
    };
  }
}
