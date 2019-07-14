import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'mode.g.dart';

@JsonSerializable()
class Mode implements Serializable {
  bool isTflService;

  bool isFarePaying;

  bool isScheduledService;

  String modeName;

  Mode({
    this.isTflService,
    this.isFarePaying,
    this.isScheduledService,
    this.modeName,
  });

  factory Mode.fromJson(Map<String, dynamic> json) {
    return _$ModeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ModeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
