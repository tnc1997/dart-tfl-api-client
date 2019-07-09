import '../../../internal/serializable.dart';

class JourneyVector implements Serializable {
  String from;

  String to;

  String via;

  String uri;

  JourneyVector({
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
    return 'JourneyVector[from=$from, to=$to, via=$via, uri=$uri, ]';
  }

  JourneyVector.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    from = json['from'];
    to = json['to'];
    via = json['via'];
    uri = json['uri'];
  }

  static List<JourneyVector> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<JourneyVector>()
        : json.map((value) => JourneyVector.fromJson(value)).toList();
  }

  static Map<String, JourneyVector> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, JourneyVector>()
        : json
            .map((key, value) => MapEntry(key, JourneyVector.fromJson(value)));
  }
}
