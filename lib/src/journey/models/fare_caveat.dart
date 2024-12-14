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

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'type': type,
    };
  }
}
