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

  Map<String, dynamic> toJson() {
    return {
      'ordinal': ordinal,
      'stopPoint': stopPoint,
    };
  }
}
