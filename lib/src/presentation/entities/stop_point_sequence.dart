import './matched_stop.dart';

class StopPointSequence {
  String lineId;

  String lineName;

  String direction;

  /// The id of this branch.
  int branchId;

  /// The ids of the next branch(es) in the sequence. Note that the next and previous branch id can be identical in the case of a looped route e.g. the circle line.
  List<int> nextBranchIds;

  /// The ids of the previous branch(es) in the sequence. Note that the next and previous branch id can be identical in the case of a looped route e.g. the circle line.
  List<int> prevBranchIds;

  List<MatchedStop> stopPoint;

  String serviceType;
  // enum serviceTypeEnum {  Regular,  Night,  };

  StopPointSequence();

  @override
  String toString() {
    return 'StopPointSequence[lineId=$lineId, lineName=$lineName, direction=$direction, branchId=$branchId, nextBranchIds=$nextBranchIds, prevBranchIds=$prevBranchIds, stopPoint=$stopPoint, serviceType=$serviceType, ]';
  }

  StopPointSequence.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lineId = json['lineId'];
    lineName = json['lineName'];
    direction = json['direction'];
    branchId = json['branchId'];
    nextBranchIds =
        (json['nextBranchIds'] as List).map((item) => item as int).toList();
    prevBranchIds =
        (json['prevBranchIds'] as List).map((item) => item as int).toList();
    stopPoint = MatchedStop.listFromJson(json['stopPoint']);
    serviceType = json['serviceType'];
  }

  Map<String, dynamic> toJson() {
    return {
      'lineId': lineId,
      'lineName': lineName,
      'direction': direction,
      'branchId': branchId,
      'nextBranchIds': nextBranchIds,
      'prevBranchIds': prevBranchIds,
      'stopPoint': stopPoint,
      'serviceType': serviceType
    };
  }

  static List<StopPointSequence> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<StopPointSequence>()
        : json.map((value) => new StopPointSequence.fromJson(value)).toList();
  }

  static Map<String, StopPointSequence> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StopPointSequence>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new StopPointSequence.fromJson(value));
    }
    return map;
  }
}
