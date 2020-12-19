import 'package:json_annotation/json_annotation.dart';

part 'canal_placemark.g.dart';

@JsonSerializable()
class CanalPlacemark {
  int? id;
  String? placemarkId;
  String? name;
  String? coordinates;

  CanalPlacemark({
    this.id,
    this.placemarkId,
    this.name,
    this.coordinates,
  });

  factory CanalPlacemark.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CanalPlacemarkFromJson(json);

  static List<CanalPlacemark> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CanalPlacemark.fromJson(value),
          )
          .toList();

  static Map<String, CanalPlacemark> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CanalPlacemark.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CanalPlacemarkToJson(this);
}
