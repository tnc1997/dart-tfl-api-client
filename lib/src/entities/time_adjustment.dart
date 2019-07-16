import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'time_adjustment.g.dart';

@JsonSerializable()
class TimeAdjustment implements Serializable {
  String date;

  String time;

  String timeIs;

  String uri;

  TimeAdjustment({
    this.date,
    this.time,
    this.timeIs,
    this.uri,
  });

  factory TimeAdjustment.fromJson(Map<String, dynamic> json) {
    return _$TimeAdjustmentFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimeAdjustmentToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
