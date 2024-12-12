import 'matched_stop.dart';

class StopPointSequence {
  String? lineId;
  String? lineName;
  String? direction;
  int? branchId;
  List<int>? nextBranchIds;
  List<int>? prevBranchIds;
  List<MatchedStop>? stopPoint;
  String? serviceType;

  StopPointSequence({
    this.lineId,
    this.lineName,
    this.direction,
    this.branchId,
    this.nextBranchIds,
    this.prevBranchIds,
    this.stopPoint,
    this.serviceType,
  });

  factory StopPointSequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return StopPointSequence(
      lineId: json['lineId'] as String?,
      lineName: json['lineName'] as String?,
      direction: json['direction'] as String?,
      branchId: (json['branchId'] as num?)?.toInt(),
      nextBranchIds: (json['nextBranchIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      prevBranchIds: (json['prevBranchIds'] as List<dynamic>?)
          ?.map((e) => (e as num).toInt())
          .toList(),
      stopPoint: (json['stopPoint'] as List<dynamic>?)
          ?.map((e) => MatchedStop.fromJson(e as Map<String, dynamic>))
          .toList(),
      serviceType: json['serviceType'] as String?,
    );
  }

  static List<StopPointSequence> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointSequence.fromJson(value),
          )
          .toList();

  static Map<String, StopPointSequence> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointSequence.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineName': lineName,
      'direction': direction,
      'branchId': branchId,
      'nextBranchIds': nextBranchIds,
      'prevBranchIds': prevBranchIds,
      'stopPoint': stopPoint,
      'serviceType': serviceType,
    };
  }
}
