import 'package:json_annotation/json_annotation.dart';

part 'stop_point_category.g.dart';

@JsonSerializable()
class StopPointCategory {
  String? category;
  List<String>? availableKeys;

  StopPointCategory({
    this.category,
    this.availableKeys,
  });

  factory StopPointCategory.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$StopPointCategoryFromJson(json);

  static List<StopPointCategory> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => StopPointCategory.fromJson(value),
          )
          .toList();

  static Map<String, StopPointCategory> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          StopPointCategory.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$StopPointCategoryToJson(this);
}
