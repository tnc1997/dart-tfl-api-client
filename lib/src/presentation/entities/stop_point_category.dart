class StopPointCategory {
  String category;

  List<String> availableKeys;

  StopPointCategory();

  @override
  String toString() {
    return 'StopPointCategory[category=$category, availableKeys=$availableKeys, ]';
  }

  StopPointCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    category = json['category'];
    availableKeys =
        (json['availableKeys'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {'category': category, 'availableKeys': availableKeys};
  }

  static List<StopPointCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StopPointCategory>()
        : json.map((value) => new StopPointCategory.fromJson(value)).toList();
  }

  static Map<String, StopPointCategory> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StopPointCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StopPointCategory.fromJson(value));
    }
    return map;
  }
}
