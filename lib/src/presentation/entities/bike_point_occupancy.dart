class BikePointOccupancy {
  String id;

  /// Name / Common name of the bike point.
  String name;

  /// Total bike counts.
  int bikesCount;

  /// Empty docks.
  int emptyDocks;

  /// Total docks available.
  int totalDocks;

  BikePointOccupancy();

  @override
  String toString() {
    return 'BikePointOccupancy[id=$id, name=$name, bikesCount=$bikesCount, emptyDocks=$emptyDocks, totalDocks=$totalDocks, ]';
  }

  BikePointOccupancy.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    bikesCount = json['bikesCount'];
    emptyDocks = json['emptyDocks'];
    totalDocks = json['totalDocks'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'bikesCount': bikesCount,
      'emptyDocks': emptyDocks,
      'totalDocks': totalDocks
    };
  }

  static List<BikePointOccupancy> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<BikePointOccupancy>()
        : json.map((value) => new BikePointOccupancy.fromJson(value)).toList();
  }

  static Map<String, BikePointOccupancy> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BikePointOccupancy>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new BikePointOccupancy.fromJson(value));
    }
    return map;
  }
}
