import 'package:json_annotation/json_annotation.dart';

part 'place_category.g.dart';

@JsonSerializable()
class PlaceCategory {
  String? category;
  List<String>? availableKeys;

  PlaceCategory({
    this.category,
    this.availableKeys,
  });

  factory PlaceCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PlaceCategoryFromJson(json);

  static List<PlaceCategory> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PlaceCategory.fromJson(value),
          )
          .toList();

  static Map<String, PlaceCategory> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PlaceCategory.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PlaceCategoryToJson(this);
}
