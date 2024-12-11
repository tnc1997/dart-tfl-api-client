import 'package:json_annotation/json_annotation.dart';

part 'fares_mode.g.dart';

@JsonSerializable()
class FaresMode {
  int? id;
  String? name;
  String? description;

  FaresMode({
    this.id,
    this.name,
    this.description,
  });

  factory FaresMode.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FaresModeFromJson(json);

  static List<FaresMode> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FaresMode.fromJson(value),
          )
          .toList();

  static Map<String, FaresMode> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FaresMode.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FaresModeToJson(this);
}
