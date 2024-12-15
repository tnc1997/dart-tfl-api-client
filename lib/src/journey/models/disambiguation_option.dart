import '../../common/models/place.dart';

class JourneyPlannerDisambiguationOption {
  String? parameterValue;
  String? uri;
  Place? place;
  int? matchQuality;

  JourneyPlannerDisambiguationOption({
    this.parameterValue,
    this.uri,
    this.place,
    this.matchQuality,
  });

  factory JourneyPlannerDisambiguationOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return JourneyPlannerDisambiguationOption(
      parameterValue: json['parameterValue'] as String?,
      uri: json['uri'] as String?,
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
      matchQuality: (json['matchQuality'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'parameterValue': parameterValue,
      'uri': uri,
      'place': place,
      'matchQuality': matchQuality,
    };
  }
}
