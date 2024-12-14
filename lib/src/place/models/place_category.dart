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

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'availableKeys': availableKeys,
    };
  }
}
