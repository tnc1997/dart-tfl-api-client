import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'validity_period.g.dart';

@JsonSerializable()
class ValidityPeriod implements Serializable {
  DateTime fromDate;

  DateTime toDate;

  bool isNow;

  ValidityPeriod({
    this.fromDate,
    this.toDate,
    this.isNow,
  });

  factory ValidityPeriod.fromJson(Map<String, dynamic> json) {
    return _$ValidityPeriodFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ValidityPeriodToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
