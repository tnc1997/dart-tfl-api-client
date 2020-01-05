import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_group.g.dart';

@JsonSerializable()
class LineGroup implements Serializable {
  String naptanIdReference;

  String stationAtcoCode;

  List<String> lineIdentifier;

  LineGroup({
    this.naptanIdReference,
    this.stationAtcoCode,
    this.lineIdentifier,
  });

  factory LineGroup.fromJson(Map<String, dynamic> json) {
    return _$LineGroupFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineGroupToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
