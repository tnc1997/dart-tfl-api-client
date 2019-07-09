class PlaceCategory {
  String category;

  List<String> availableKeys;

  PlaceCategory();

  @override
  String toString() {
    return 'PlaceCategory[category=$category, availableKeys=$availableKeys, ]';
  }

  PlaceCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    category = json['category'];
    availableKeys =
        (json['availableKeys'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {'category': category, 'availableKeys': availableKeys};
  }

  static List<PlaceCategory> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PlaceCategory>()
        : json.map((value) => new PlaceCategory.fromJson(value)).toList();
  }

  static Map<String, PlaceCategory> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PlaceCategory>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PlaceCategory.fromJson(value));
    }
    return map;
  }
}
