class TimetableDisambiguationOption {
  String? description;
  String? uri;

  TimetableDisambiguationOption({
    this.description,
    this.uri,
  });

  factory TimetableDisambiguationOption.fromJson(
    Map<String, dynamic> json,
  ) {
    return TimetableDisambiguationOption(
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
