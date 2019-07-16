import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'casualty.g.dart';

@JsonSerializable()
class Casualty implements Serializable {
  int age;

  String severity;

  String mode;

  String ageBand;

  Casualty({
    this.age,
    this.severity,
    this.mode,
    this.ageBand,
  });

  factory Casualty.fromJson(Map<String, dynamic> json) {
    return _$CasualtyFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$CasualtyToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
