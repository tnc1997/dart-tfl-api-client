import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'train_loading.g.dart';

@JsonSerializable()
class TrainLoading implements Serializable {
  /// The line name.
  String line;

  /// The direction of the line e.g. NB, SB etc.
  String lineDirection;

  /// The direction displayed on the platform e.g. NB, SB etc.
  String platformDirection;

  /// The direction in regards to the journey planner i.e. inbound or outbound.
  String direction;

  /// The NaPTAN of the adjacent station.
  String naptanTo;

  /// The time in 24hr format with 15 minute intervals e.g. 0500-0515, 0515-0530 etc.
  String timeSlice;

  /// The scale between 1-6. 1 = Very quiet. 2 = Quiet. 3 = Fairly busy. 4 = Busy. 5 = Very busy. 6 = Exceptionally busy.
  int value;

  TrainLoading({
    this.line,
    this.lineDirection,
    this.platformDirection,
    this.direction,
    this.naptanTo,
    this.timeSlice,
    this.value,
  });

  factory TrainLoading.fromJson(Map<String, dynamic> json) {
    return _$TrainLoadingFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TrainLoadingToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
