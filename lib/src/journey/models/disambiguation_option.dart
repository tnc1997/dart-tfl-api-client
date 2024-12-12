import '../../common/models/place.dart';

class DisambiguationOption1 {
  String? parameterValue;
  String? uri;
  Place? place;
  int? matchQuality;

  DisambiguationOption1({
    this.parameterValue,
    this.uri,
    this.place,
    this.matchQuality,
  });

  factory DisambiguationOption1.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisambiguationOption1(
      parameterValue: json['parameterValue'] as String?,
      uri: json['uri'] as String?,
      place: json['place'] == null
          ? null
          : Place.fromJson(json['place'] as Map<String, dynamic>),
      matchQuality: (json['matchQuality'] as num?)?.toInt(),
    );
  }

  static List<DisambiguationOption1> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisambiguationOption1.fromJson(value),
          )
          .toList();

  static Map<String, DisambiguationOption1> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisambiguationOption1.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'parameterValue': parameterValue,
      'uri': uri,
      'place': place,
      'matchQuality': matchQuality,
    };
  }
}
