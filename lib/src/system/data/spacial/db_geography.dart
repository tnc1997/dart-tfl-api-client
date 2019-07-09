import './db_geography_well_known_value.dart';

class DbGeography {
  DbGeographyWellKnownValue geography;

  DbGeography();

  @override
  String toString() {
    return 'DbGeography[geography=$geography, ]';
  }

  DbGeography.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    geography = DbGeographyWellKnownValue.fromJson(json['geography']);
  }

  Map<String, dynamic> toJson() {
    return {'geography': geography};
  }

  static List<DbGeography> listFromJson(List<dynamic> json) {
    return json == null
        ? List<DbGeography>()
        : json.map((value) => DbGeography.fromJson(value)).toList();
  }

  static Map<String, DbGeography> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, DbGeography>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = DbGeography.fromJson(value));
    }
    return map;
  }
}
