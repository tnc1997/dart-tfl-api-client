import 'package:json_annotation/json_annotation.dart';

part 'fare_caveat.g.dart';

@JsonSerializable()
class FareCaveat {
  String? text;
  String? type;

  FareCaveat({
    this.text,
    this.type,
  });

  factory FareCaveat.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FareCaveatFromJson(json);

  static List<FareCaveat> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FareCaveat.fromJson(value),
          )
          .toList();

  static Map<String, FareCaveat> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FareCaveat.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FareCaveatToJson(this);
}
