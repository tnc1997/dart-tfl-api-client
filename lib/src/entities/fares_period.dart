import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'fares_period.g.dart';

@JsonSerializable()
class FaresPeriod implements Serializable {
  int id;

  DateTime startDate;

  DateTime viewableDate;

  DateTime endDate;

  bool isFuture;

  FaresPeriod({
    this.id,
    this.startDate,
    this.viewableDate,
    this.endDate,
    this.isFuture,
  });

  factory FaresPeriod.fromJson(Map<String, dynamic> json) {
    return _$FaresPeriodFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FaresPeriodToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
