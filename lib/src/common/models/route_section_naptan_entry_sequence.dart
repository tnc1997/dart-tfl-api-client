import 'stop_point.dart';

class RouteSectionNaptanEntrySequence {
  int? ordinal;
  StopPoint? stopPoint;

  RouteSectionNaptanEntrySequence({
    this.ordinal,
    this.stopPoint,
  });

  factory RouteSectionNaptanEntrySequence.fromJson(
    Map<String, dynamic> json,
  ) {
    return RouteSectionNaptanEntrySequence(
      ordinal: (json['ordinal'] as num?)?.toInt(),
      stopPoint: json['stopPoint'] == null
          ? null
          : StopPoint.fromJson(json['stopPoint'] as Map<String, dynamic>),
    );
  }

  static List<RouteSectionNaptanEntrySequence> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => RouteSectionNaptanEntrySequence.fromJson(value),
          )
          .toList();

  static Map<String, RouteSectionNaptanEntrySequence> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          RouteSectionNaptanEntrySequence.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'ordinal': ordinal,
      'stopPoint': stopPoint,
    };
  }
}
