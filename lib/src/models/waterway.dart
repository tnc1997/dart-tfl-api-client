import 'package:json_annotation/json_annotation.dart';

part 'waterway.g.dart';

@JsonSerializable()
class Waterway {
  int? id;
  int? placeId;
  String? description;
  String? key;

  Waterway({
    this.id,
    this.placeId,
    this.description,
    this.key,
  });

  factory Waterway.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WaterwayFromJson(json);

  static List<Waterway> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Waterway.fromJson(value),
          )
          .toList();

  static Map<String, Waterway> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Waterway.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$WaterwayToJson(this);
}
