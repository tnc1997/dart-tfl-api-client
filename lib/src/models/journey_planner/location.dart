import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
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
  ) =>
      _$LocationFromJson(json);

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

  Map<String, dynamic> toJson() => _$LocationToJson(this);
}
