import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'stop_point_category.g.dart';

@JsonSerializable()
class StopPointCategory implements Serializable {
  String category;

  List<String> availableKeys;

  StopPointCategory({
    this.category,
    this.availableKeys,
  });

  factory StopPointCategory.fromJson(Map<String, dynamic> json) {
    return _$StopPointCategoryFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$StopPointCategoryToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
