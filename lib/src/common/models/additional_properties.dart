class AdditionalProperties {
  String? category;
  String? key;
  String? sourceSystemKey;
  String? value;
  DateTime? modified;

  AdditionalProperties({
    this.category,
    this.key,
    this.sourceSystemKey,
    this.value,
    this.modified,
  });

  factory AdditionalProperties.fromJson(
    Map<String, dynamic> json,
  ) {
    return AdditionalProperties(
      category: json['category'] as String?,
      key: json['key'] as String?,
      sourceSystemKey: json['sourceSystemKey'] as String?,
      value: json['value'] as String?,
      modified: json['modified'] == null
          ? null
          : DateTime.parse(json['modified'] as String),
    );
  }

  static List<AdditionalProperties> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AdditionalProperties.fromJson(value),
          )
          .toList();

  static Map<String, AdditionalProperties> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AdditionalProperties.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'key': key,
      'sourceSystemKey': sourceSystemKey,
      'value': value,
      'modified': modified?.toIso8601String(),
    };
  }
}
