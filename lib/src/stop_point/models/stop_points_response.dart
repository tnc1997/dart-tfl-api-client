import 'package:json_annotation/json_annotation.dart';

import '../../common/models/stop_point.dart';

part 'stop_points_response.g.dart';

@JsonSerializable()
class StopPointsResponse {
  List<double>? centrePoint;
  List<StopPoint>? stopPoints;
  int? pageSize;
  int? total;
  int? page;

  StopPointsResponse({
    this.centrePoint,
    this.stopPoints,
    this.pageSize,
    this.total,
    this.page,
  });

  factory StopPointsResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StopPointsResponseFromJson(json);

  static List<StopPointsResponse> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointsResponse.fromJson(value),
          )
          .toList();

  static Map<String, StopPointsResponse> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointsResponse.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StopPointsResponseToJson(this);
}
