import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'bay.g.dart';

@JsonSerializable()
class Bay implements Serializable {
  String bayType;

  int bayCount;

  int free;

  int occupied;

  Bay({
    this.bayType,
    this.bayCount,
    this.free,
    this.occupied,
  });

  factory Bay.fromJson(Map<String, dynamic> json) {
    return _$BayFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$BayToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
