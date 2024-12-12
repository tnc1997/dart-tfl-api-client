import 'disambiguation_option.dart';

class Disambiguation2 {
  List<DisambiguationOption2>? disambiguationOptions;

  Disambiguation2({
    this.disambiguationOptions,
  });

  factory Disambiguation2.fromJson(
    Map<String, dynamic> json,
  ) {
    return Disambiguation2(
      disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
          ?.map(
              (e) => DisambiguationOption2.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static List<Disambiguation2> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Disambiguation2.fromJson(value),
          )
          .toList();

  static Map<String, Disambiguation2> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Disambiguation2.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'disambiguationOptions': disambiguationOptions,
    };
  }
}
