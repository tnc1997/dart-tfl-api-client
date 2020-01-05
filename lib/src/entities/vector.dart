import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'vector.g.dart';

@JsonSerializable()
class Vector implements Serializable {
  String from;

  String to;

  String via;

  String uri;

  Vector({
    this.from,
    this.to,
    this.via,
    this.uri,
  });

  factory Vector.fromJson(Map<String, dynamic> json) {
    return _$VectorFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$VectorToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
