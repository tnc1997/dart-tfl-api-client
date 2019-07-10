import './stop_point.dart';
import '../../internal/serializable.dart';

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

  @override
  Map<String, dynamic> toJson() {
    return {
      'centrePoint': centrePoint,
      'stopPoints': stopPoints,
      'pageSize': pageSize,
      'total': total,
      'page': page,
    };
  }

  @override
  String toString() {
    return 'StopPointsResponse[centrePoint=$centrePoint, stopPoints=$stopPoints, pageSize=$pageSize, total=$total, page=$page]';
  }

  StopPointsResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    centrePoint =
        (json['centrePoint'] as List).map((item) => item as double).toList();
    stopPoints = StopPoint.listFromJson(json['stopPoints']);
    pageSize = json['pageSize'];
    total = json['total'];
    page = json['page'];
  }

  static List<StopPointsResponse> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StopPointsResponse>()
        : json.map((value) => StopPointsResponse.fromJson(value)).toList();
  }

  static Map<String, StopPointsResponse> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StopPointsResponse>()
        : json.map(
            (key, value) => MapEntry(key, StopPointsResponse.fromJson(value)));
  }
}
