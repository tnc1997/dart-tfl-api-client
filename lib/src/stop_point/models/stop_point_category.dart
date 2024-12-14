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

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'availableKeys': availableKeys,
    };
  }
}
