import 'package:json_annotation/json_annotation.dart';

import '../../common/models/identifier.dart';

part 'path.g.dart';

@JsonSerializable()
class Path {
  String? lineString;
  List<Identifier>? stopPoints;
  List<Object>? elevation;

  Path({
    this.lineString,
    this.stopPoints,
    this.elevation,
  });

  factory Path.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PathFromJson(json);

  static List<Path> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Path.fromJson(value),
          )
          .toList();

  static Map<String, Path> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Path.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PathToJson(this);
}
