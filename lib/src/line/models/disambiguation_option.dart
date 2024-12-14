class DisambiguationOption2 {
  String? description;
  String? uri;

  DisambiguationOption2({
    this.description,
    this.uri,
  });

  factory DisambiguationOption2.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisambiguationOption2(
      description: json['description'] as String?,
      uri: json['uri'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'uri': uri,
    };
  }
}
