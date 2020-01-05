import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'bike_point_occupancy.g.dart';

@JsonSerializable()
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

  factory BikePointOccupancy.fromJson(Map<String, dynamic> json) {
    return _$BikePointOccupancyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$BikePointOccupancyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
