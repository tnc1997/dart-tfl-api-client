import 'package:json_annotation/json_annotation.dart';

part 'redirect.g.dart';

@JsonSerializable()
class Redirect {
  String? shortUrl;
  String? longUrl;
  bool? active;

  Redirect({
    this.shortUrl,
    this.longUrl,
    this.active,
  });

  factory Redirect.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RedirectFromJson(json);

  static List<Redirect> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Redirect.fromJson(value),
          )
          .toList();

  static Map<String, Redirect> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Redirect.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$RedirectToJson(this);
}
