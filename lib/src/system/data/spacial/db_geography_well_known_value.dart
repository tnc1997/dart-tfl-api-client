import '../../../internal/serializable.dart';

class DbGeographyWellKnownValue implements Serializable {
  int coordinateSystemId;

  String wellKnownText;

  List<int> wellKnownBinary;

  DbGeographyWellKnownValue({
    this.coordinateSystemId,
    this.wellKnownText,
    this.wellKnownBinary,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'coordinateSystemId': coordinateSystemId,
      'wellKnownText': wellKnownText,
      'wellKnownBinary': wellKnownBinary,
    };
  }

  @override
  String toString() {
    return 'DbGeographyWellKnownValue[coordinateSystemId=$coordinateSystemId, wellKnownText=$wellKnownText, wellKnownBinary=$wellKnownBinary, ]';
  }

  DbGeographyWellKnownValue.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    coordinateSystemId = json['coordinateSystemId'];
    wellKnownText = json['wellKnownText'];
    wellKnownBinary = json['wellKnownBinary'];
  }

  static List<DbGeographyWellKnownValue> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<DbGeographyWellKnownValue>()
        : json
            .map((value) => DbGeographyWellKnownValue.fromJson(value))
            .toList();
  }

  static Map<String, DbGeographyWellKnownValue> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, DbGeographyWellKnownValue>()
        : json.map((key, value) =>
            MapEntry(key, DbGeographyWellKnownValue.fromJson(value)));
  }
}
