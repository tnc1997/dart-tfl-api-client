import '../../common/models/identifier.dart';

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
  ) {
    return Path(
      lineString: json['lineString'] as String?,
      stopPoints: (json['stopPoints'] as List<dynamic>?)
          ?.map((e) => Identifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      elevation: (json['elevation'] as List<dynamic>?)
          ?.map((e) => e as Object)
          .toList(),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'lineString': lineString,
      'stopPoints': stopPoints,
      'elevation': elevation,
    };
  }
}
