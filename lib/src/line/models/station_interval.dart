import 'interval.dart';

class StationInterval {
  String? id;
  List<Interval>? intervals;

  StationInterval({
    this.id,
    this.intervals,
  });

  factory StationInterval.fromJson(
    Map<String, dynamic> json,
  ) {
    return StationInterval(
      id: json['id'] as String?,
      intervals: (json['intervals'] as List<dynamic>?)
          ?.map((e) => Interval.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  static List<StationInterval> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StationInterval.fromJson(value),
          )
          .toList();

  static Map<String, StationInterval> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StationInterval.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'intervals': intervals,
    };
  }
}
