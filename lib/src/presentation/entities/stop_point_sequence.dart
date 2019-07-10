import './matched_stop.dart';
import '../../internal/serializable.dart';

class StopPointSequence implements Serializable {
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

  @override
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

  @override
  String toString() {
    return 'StopPointSequence[lineId=$lineId, lineName=$lineName, direction=$direction, branchId=$branchId, nextBranchIds=$nextBranchIds, prevBranchIds=$prevBranchIds, stopPoint=$stopPoint, serviceType=$serviceType]';
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

  static List<StopPointSequence> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<StopPointSequence>()
        : json.map((value) => StopPointSequence.fromJson(value)).toList();
  }

  static Map<String, StopPointSequence> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, StopPointSequence>()
        : json.map(
            (key, value) => MapEntry(key, StopPointSequence.fromJson(value)));
  }
}
