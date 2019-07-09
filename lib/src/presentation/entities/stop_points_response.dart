import './stop_point.dart';

class StopPointsResponse {
  /// The centre latitude/longitude of this list of stop points.
  List<double> centrePoint;

  /// Collection of stop points.
  List<StopPoint> stopPoints;

  /// The maximum size of the page in this response i.e. the maximum number of stop points.
  int pageSize;

  /// The total number of stop points available across all pages.
  int total;

  /// The index of this page.
  int page;

  StopPointsResponse();

  @override
  String toString() {
    return 'StopPointsResponse[centrePoint=$centrePoint, stopPoints=$stopPoints, pageSize=$pageSize, total=$total, page=$page, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'centrePoint': centrePoint,
      'stopPoints': stopPoints,
      'pageSize': pageSize,
      'total': total,
      'page': page
    };
  }

  static List<StopPointsResponse> listFromJson(List<dynamic> json) {
    return json == null
        ? List<StopPointsResponse>()
        : json.map((value) => StopPointsResponse.fromJson(value)).toList();
  }

  static Map<String, StopPointsResponse> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, StopPointsResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = StopPointsResponse.fromJson(value));
    }
    return map;
  }
}
