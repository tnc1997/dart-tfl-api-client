class StreetMatch {
  String? street;

  StreetMatch({
    this.street,
  });

  factory StreetMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return StreetMatch(
      street: json['street'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'street': street,
    };
  }
}
