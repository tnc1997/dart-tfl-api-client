import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/elevation.dart';
import 'package:tfl_api_client/src/entities/identifier.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'path.g.dart';

@JsonSerializable()
class Path implements Serializable {
  String lineString;

  List<Identifier> stopPoints;

  List<Elevation> elevation;

  Path({
    this.lineString,
    this.stopPoints,
    this.elevation,
  });

  factory Path.fromJson(Map<String, dynamic> json) {
    return _$PathFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PathToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
