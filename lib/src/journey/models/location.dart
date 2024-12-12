class Location {
  String? name;
  String? region;
  bool? deleteAssignedStops;
  String? placeDefaultText;

  Location({
    this.name,
    this.region,
    this.deleteAssignedStops,
    this.placeDefaultText,
  });

  factory Location.fromJson(
    Map<String, dynamic> json,
  ) {
    return Location(
      name: json['name'] as String?,
      region: json['region'] as String?,
      deleteAssignedStops: json['deleteAssignedStops'] as bool?,
      placeDefaultText: json['placeDefaultText'] as String?,
    );
  }

  static List<Location> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Location.fromJson(value),
          )
          .toList();

  static Map<String, Location> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Location.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'region': region,
      'deleteAssignedStops': deleteAssignedStops,
      'placeDefaultText': placeDefaultText,
    };
  }
}
