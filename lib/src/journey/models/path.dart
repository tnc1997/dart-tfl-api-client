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

  Map<String, dynamic> toJson() {
    return {
      'lineString': lineString,
      'stopPoints': stopPoints,
      'elevation': elevation,
    };
  }
}
