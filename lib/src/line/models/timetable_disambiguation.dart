import 'timetable_disambiguation_option.dart';

class TimetableDisambiguation {
  List<TimetableDisambiguationOption>? disambiguationOptions;

  TimetableDisambiguation({
    this.disambiguationOptions,
  });

  factory TimetableDisambiguation.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimetableDisambiguation(
      disambiguationOptions: (json['disambiguationOptions'] as List<dynamic>?)
          ?.map((e) =>
              TimetableDisambiguationOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'disambiguationOptions': disambiguationOptions,
    };
  }
}
