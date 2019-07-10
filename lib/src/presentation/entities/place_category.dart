import '../../internal/serializable.dart';

class PlaceCategory implements Serializable {
  String category;

  List<String> availableKeys;

  PlaceCategory({
    this.category,
    this.availableKeys,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'availableKeys': availableKeys,
    };
  }

  @override
  String toString() {
    return 'PlaceCategory[category=$category, availableKeys=$availableKeys]';
  }

  PlaceCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    category = json['category'];
    availableKeys =
        (json['availableKeys'] as List).map((item) => item as String).toList();
  }

  static List<PlaceCategory> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PlaceCategory>()
        : json.map((value) => PlaceCategory.fromJson(value)).toList();
  }

  static Map<String, PlaceCategory> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PlaceCategory>()
        : json
            .map((key, value) => MapEntry(key, PlaceCategory.fromJson(value)));
  }
}
