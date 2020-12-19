import 'package:json_annotation/json_annotation.dart';

part 'line_mode_group.g.dart';

@JsonSerializable()
class LineModeGroup {
  String? modeName;
  List<String>? lineIdentifier;

  LineModeGroup({
    this.modeName,
    this.lineIdentifier,
  });

  factory LineModeGroup.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineModeGroupFromJson(json);

  static List<LineModeGroup> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineModeGroup.fromJson(value),
          )
          .toList();

  static Map<String, LineModeGroup> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineModeGroup.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineModeGroupToJson(this);
}
