import 'package:json_annotation/json_annotation.dart';

part 'bike_point_occupancy.g.dart';

@JsonSerializable()
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
  ) =>
      _$BikePointOccupancyFromJson(json);

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

  Map<String, dynamic> toJson() => _$BikePointOccupancyToJson(this);
}
