class BikePointOccupancy {
  String? id;
  String? name;
  int? bikesCount;
  int? emptyDocks;
  int? totalDocks;

  BikePointOccupancy({
    this.id,
    this.name,
    this.bikesCount,
    this.emptyDocks,
    this.totalDocks,
  });

  factory BikePointOccupancy.fromJson(
    Map<String, dynamic> json,
  ) {
    return BikePointOccupancy(
      id: json['id'] as String?,
      name: json['name'] as String?,
      bikesCount: (json['bikesCount'] as num?)?.toInt(),
      emptyDocks: (json['emptyDocks'] as num?)?.toInt(),
      totalDocks: (json['totalDocks'] as num?)?.toInt(),
    );
  }

  static List<BikePointOccupancy> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => BikePointOccupancy.fromJson(value),
          )
          .toList();

  static Map<String, BikePointOccupancy> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          BikePointOccupancy.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'bikesCount': bikesCount,
      'emptyDocks': emptyDocks,
      'totalDocks': totalDocks,
    };
  }
}
