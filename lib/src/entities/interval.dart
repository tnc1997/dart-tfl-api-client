import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'interval.g.dart';

@JsonSerializable()
class Interval implements Serializable {
  String stopId;

  double timeToArrival;

  Interval({
    this.stopId,
    this.timeToArrival,
  });

  factory Interval.fromJson(Map<String, dynamic> json) {
    return _$IntervalFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$IntervalToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
