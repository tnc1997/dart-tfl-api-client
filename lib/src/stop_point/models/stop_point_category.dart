class StopPointCategory {
  String? category;
  List<String>? availableKeys;

  StopPointCategory({
    this.category,
    this.availableKeys,
  });

  factory StopPointCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    return StopPointCategory(
      category: json['category'] as String?,
      availableKeys: (json['availableKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  static List<StopPointCategory> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointCategory.fromJson(value),
          )
          .toList();

  static Map<String, StopPointCategory> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointCategory.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'availableKeys': availableKeys,
    };
  }
}
