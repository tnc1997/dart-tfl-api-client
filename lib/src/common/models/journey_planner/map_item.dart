import 'package:json_annotation/json_annotation.dart';

part 'map_item.g.dart';

@JsonSerializable()
class MapItem {
  String? uri;
  String? type;
  int? size;

  MapItem({
    this.uri,
    this.type,
    this.size,
  });

  factory MapItem.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$MapItemFromJson(json);

  static List<MapItem> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MapItem.fromJson(value),
          )
          .toList();

  static Map<String, MapItem> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MapItem.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$MapItemToJson(this);
}
