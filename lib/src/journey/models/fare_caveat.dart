class FareCaveat {
  String? text;
  String? type;

  FareCaveat({
    this.text,
    this.type,
  });

  factory FareCaveat.fromJson(
    Map<String, dynamic> json,
  ) {
    return FareCaveat(
      text: json['text'] as String?,
      type: json['type'] as String?,
    );
  }

  static List<FareCaveat> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareCaveat.fromJson(value),
          )
          .toList();

  static Map<String, FareCaveat> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareCaveat.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'type': type,
    };
  }
}
