import 'package:json_annotation/json_annotation.dart';

part 'referenced_stop.g.dart';

@JsonSerializable()
class ReferencedStop {
  String? stopId;
  String? stopPointId;
  String? name;

  ReferencedStop({
    this.stopId,
    this.stopPointId,
    this.name,
  });

  factory ReferencedStop.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ReferencedStopFromJson(json);

  static List<ReferencedStop> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ReferencedStop.fromJson(value),
          )
          .toList();

  static Map<String, ReferencedStop> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ReferencedStop.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ReferencedStopToJson(this);
}
