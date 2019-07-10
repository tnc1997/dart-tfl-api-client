import '../../internal/serializable.dart';

class StopPointCategory implements Serializable {
  String category;

  List<String> availableKeys;

  StopPointCategory({
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
    return 'StopPointCategory[category=$category, availableKeys=$availableKeys]';
  }

  StopPointCategory.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    category = json['category'];
    availableKeys =
        (json['availableKeys'] as List).map((item) => item as String).toList();
  }

  static List<StopPointCategory> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StopPointCategory>()
        : json.map((value) => StopPointCategory.fromJson(value)).toList();
  }

  static Map<String, StopPointCategory> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StopPointCategory>()
        : json.map(
            (key, value) => MapEntry(key, StopPointCategory.fromJson(value)));
  }
}
