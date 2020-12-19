import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/matched_stop.dart';

part 'stop_point_sequence.g.dart';

@JsonSerializable()
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
  ) =>
      _$StopPointSequenceFromJson(json);

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

  Map<String, dynamic> toJson() => _$StopPointSequenceToJson(this);
}
