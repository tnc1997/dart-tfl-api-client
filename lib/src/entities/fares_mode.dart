import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'fares_mode.g.dart';

@JsonSerializable()
class FaresMode implements Serializable {
  int id;

  String name;

  String description;

  FaresMode({
    this.id,
    this.name,
    this.description,
  });

  factory FaresMode.fromJson(Map<String, dynamic> json) {
    return _$FaresModeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FaresModeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
