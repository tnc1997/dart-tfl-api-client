class BikePointOccupancy {
  String? id;
  String? name;
  int? bikesCount;
  int? emptyDocks;
  int? totalDocks;
  int? standardBikesCount;
  int? eBikesCount;

  BikePointOccupancy({
    this.id,
    this.name,
    this.bikesCount,
    this.emptyDocks,
    this.totalDocks,
    this.standardBikesCount,
    this.eBikesCount,
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
      standardBikesCount: (json['standardBikesCount'] as num?)?.toInt(),
      eBikesCount: (json['eBikesCount'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'bikesCount': bikesCount,
      'emptyDocks': emptyDocks,
      'totalDocks': totalDocks,
      'standardBikesCount': standardBikesCount,
      'eBikesCount': eBikesCount,
    };
  }
}
