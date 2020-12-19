import 'package:json_annotation/json_annotation.dart';

part 'distance.g.dart';

@JsonSerializable()
class Distance {
  String? key;
  String? value;

  Distance({
    this.key,
    this.value,
  });

  factory Distance.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DistanceFromJson(json);

  static List<Distance> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Distance.fromJson(value),
          )
          .toList();

  static Map<String, Distance> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Distance.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DistanceToJson(this);
}
