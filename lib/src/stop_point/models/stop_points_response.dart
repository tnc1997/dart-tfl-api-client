import '../../common/models/stop_point.dart';

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
  ) {
    return StopPointsResponse(
      centrePoint: (json['centrePoint'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      stopPoints: (json['stopPoints'] as List<dynamic>?)
          ?.map((e) => StopPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      pageSize: (json['pageSize'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'centrePoint': centrePoint,
      'stopPoints': stopPoints,
      'pageSize': pageSize,
      'total': total,
      'page': page,
    };
  }
}
