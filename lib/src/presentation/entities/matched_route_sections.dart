import '../../internal/serializable.dart';

class MatchedRouteSections implements Serializable {
  int id;

  MatchedRouteSections({
    this.id,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }

  @override
  String toString() {
    return 'MatchedRouteSections[id=$id, ]';
  }

  MatchedRouteSections.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
  }

  static List<MatchedRouteSections> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<MatchedRouteSections>()
        : json.map((value) => MatchedRouteSections.fromJson(value)).toList();
  }

  static Map<String, MatchedRouteSections> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, MatchedRouteSections>()
        : json.map((key, value) =>
            MapEntry(key, MatchedRouteSections.fromJson(value)));
  }
}
