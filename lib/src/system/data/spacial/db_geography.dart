import './db_geography_well_known_value.dart';
import '../../../internal/serializable.dart';

class DbGeography implements Serializable {
  DbGeographyWellKnownValue geography;

  DbGeography({
    this.geography,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'geography': geography,
    };
  }

  @override
  String toString() {
    return 'DbGeography[geography=$geography, ]';
  }

  DbGeography.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    geography = DbGeographyWellKnownValue.fromJson(json['geography']);
  }

  static List<DbGeography> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<DbGeography>()
        : json.map((value) => DbGeography.fromJson(value)).toList();
  }

  static Map<String, DbGeography> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, DbGeography>()
        : json.map((key, value) => MapEntry(key, DbGeography.fromJson(value)));
  }
}
