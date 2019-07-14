import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'redirect.g.dart';

@JsonSerializable()
class Redirect implements Serializable {
  String shortUrl;

  String longUrl;

  bool active;

  Redirect({
    this.shortUrl,
    this.longUrl,
    this.active,
  });

  factory Redirect.fromJson(Map<String, dynamic> json) {
    return _$RedirectFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$RedirectToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
