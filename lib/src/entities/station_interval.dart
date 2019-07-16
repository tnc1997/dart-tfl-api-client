import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'interval.dart';

part 'station_interval.g.dart';

@JsonSerializable()
class StationInterval implements Serializable {
  String id;

  List<Interval> intervals;

  StationInterval({
    this.id,
    this.intervals,
  });

  factory StationInterval.fromJson(Map<String, dynamic> json) {
    return _$StationIntervalFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StationIntervalToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
