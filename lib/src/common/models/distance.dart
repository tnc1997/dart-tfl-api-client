class Distance {
  String? key;
  String? value;

  Distance({
    this.key,
    this.value,
  });

  factory Distance.fromJson(
    Map<String, dynamic> json,
  ) {
    return Distance(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key,
      'value': value,
    };
  }
}
