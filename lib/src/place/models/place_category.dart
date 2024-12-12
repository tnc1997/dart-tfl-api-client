class PlaceCategory {
  String? category;
  List<String>? availableKeys;

  PlaceCategory({
    this.category,
    this.availableKeys,
  });

  factory PlaceCategory.fromJson(
    Map<String, dynamic> json,
  ) {
    return PlaceCategory(
      category: json['category'] as String?,
      availableKeys: (json['availableKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  static List<PlaceCategory> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlaceCategory.fromJson(value),
          )
          .toList();

  static Map<String, PlaceCategory> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlaceCategory.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'availableKeys': availableKeys,
    };
  }
}
