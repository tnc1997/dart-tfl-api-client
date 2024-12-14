import 'disambiguation_option.dart';

class Disambiguation1 {
  List<DisambiguationOption1>? disambiguationOptions;
  String? matchStatus;

  Disambiguation1({
    this.disambiguationOptions,
    this.matchStatus,
  });

  factory Disambiguation1.fromJson(
    Map<String, dynamic> json,
  ) {
    return Disambiguation1(
      disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
          ?.map(
              (e) => DisambiguationOption1.fromJson(e as Map<String, dynamic>))
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
