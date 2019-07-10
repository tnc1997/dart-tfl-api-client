import '../../internal/serializable.dart';

class BikePointOccupancy implements Serializable {
  String id;

  /// The name of the bike point.
  String name;

  /// The total bike count.
  int bikesCount;

  /// The number of empty docks.
  int emptyDocks;

  /// The total docks available.
  int totalDocks;

  BikePointOccupancy({
    this.id,
    this.name,
    this.bikesCount,
    this.emptyDocks,
    this.totalDocks,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'bikesCount': bikesCount,
      'emptyDocks': emptyDocks,
      'totalDocks': totalDocks,
    };
  }

  @override
  String toString() {
    return 'BikePointOccupancy[id=$id, name=$name, bikesCount=$bikesCount, emptyDocks=$emptyDocks, totalDocks=$totalDocks]';
  }

  BikePointOccupancy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    id = json['id'];
    name = json['name'];
    bikesCount = json['bikesCount'];
    emptyDocks = json['emptyDocks'];
    totalDocks = json['totalDocks'];
  }

  static List<BikePointOccupancy> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<BikePointOccupancy>()
        : json.map((value) => BikePointOccupancy.fromJson(value)).toList();
  }

  static Map<String, BikePointOccupancy> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, BikePointOccupancy>()
        : json.map(
            (key, value) => MapEntry(key, BikePointOccupancy.fromJson(value)));
  }
}
