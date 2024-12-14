class DisambiguationOption {
  String? description;
  String? uri;

  DisambiguationOption({
    this.description,
    this.uri,
  });

  factory DisambiguationOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisambiguationOption(
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
