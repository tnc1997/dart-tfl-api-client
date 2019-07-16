import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'matched_stop.dart';

part 'stop_point_sequence.g.dart';

@JsonSerializable()
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

  factory StopPointSequence.fromJson(Map<String, dynamic> json) {
    return _$StopPointSequenceFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointSequenceToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
