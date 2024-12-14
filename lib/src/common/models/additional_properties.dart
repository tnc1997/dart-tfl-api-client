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
