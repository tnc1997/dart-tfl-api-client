import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'stop_point.dart';

part 'stop_points_response.g.dart';

@JsonSerializable()
class StopPointsResponse implements Serializable {
  /// The centre latitude/longitude of this list of stop points.
  List<double> centrePoint;

  /// The collection of stop points.
  List<StopPoint> stopPoints;

  /// The maximum size of the page in this response i.e. the maximum number of stop points.
  int pageSize;

  /// The total number of stop points available across all pages.
  int total;

  /// The index of this page.
  int page;

  StopPointsResponse({
    this.centrePoint,
    this.stopPoints,
    this.pageSize,
    this.total,
    this.page,
  });

  factory StopPointsResponse.fromJson(Map<String, dynamic> json) {
    return _$StopPointsResponseFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointsResponseToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
