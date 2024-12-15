import 'street_match.dart';

class StreetResponse {
  String? postCode;
  List<StreetMatch>? matches;

  StreetResponse({
    this.postCode,
    this.matches,
  });

  factory StreetResponse.fromJson(
    Map<String, dynamic> json,
  ) {
    return StreetResponse(
      postCode: json['postCode'] as String?,
      matches: (json['matches'] as List<dynamic>?)
          ?.map((e) => StreetMatch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'postCode': postCode,
      'matches': matches,
    };
  }
}
