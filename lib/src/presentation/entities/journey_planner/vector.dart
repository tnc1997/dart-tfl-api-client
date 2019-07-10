import '../../../internal/serializable.dart';

class Vector implements Serializable {
  String from;

  String to;

  String via;

  String uri;

  Vector({
    this.from,
    this.to,
    this.via,
    this.uri,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'from': from,
      'to': to,
      'via': via,
      'uri': uri,
    };
  }

  @override
  String toString() {
    return 'Vector[from=$from, to=$to, via=$via, uri=$uri]';
  }

  Vector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    from = json['from'];
    to = json['to'];
    via = json['via'];
    uri = json['uri'];
  }

  static List<Vector> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Vector>()
        : json.map((value) => Vector.fromJson(value)).toList();
  }

  static Map<String, Vector> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Vector>()
        : json.map((key, value) => MapEntry(key, Vector.fromJson(value)));
  }
}
