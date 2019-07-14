import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'place_category.g.dart';

@JsonSerializable()
class PlaceCategory implements Serializable {
  String category;

  List<String> availableKeys;

  PlaceCategory({
    this.category,
    this.availableKeys,
  });

  factory PlaceCategory.fromJson(Map<String, dynamic> json) {
    return _$PlaceCategoryFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PlaceCategoryToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
