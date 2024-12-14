import 'disambiguation_option.dart';

class Disambiguation {
  List<DisambiguationOption>? disambiguationOptions;

  Disambiguation({
    this.disambiguationOptions,
  });

  factory Disambiguation.fromJson(
    Map<String, dynamic> json,
  ) {
    return Disambiguation(
      disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
          ?.map((e) => DisambiguationOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'disambiguationOptions': disambiguationOptions,
    };
  }
}
