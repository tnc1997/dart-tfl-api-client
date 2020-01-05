import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_mode_group.g.dart';

@JsonSerializable()
class LineModeGroup implements Serializable {
  String modeName;

  List<String> lineIdentifier;

  LineModeGroup({
    this.modeName,
    this.lineIdentifier,
  });

  factory LineModeGroup.fromJson(Map<String, dynamic> json) {
    return _$LineModeGroupFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineModeGroupToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
