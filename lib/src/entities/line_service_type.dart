import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/line_specific_service_type.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'line_service_type.g.dart';

@JsonSerializable()
class LineServiceType implements Serializable {
  String lineName;

  List<LineSpecificServiceType> lineSpecificServiceTypes;

  LineServiceType({
    this.lineName,
    this.lineSpecificServiceTypes,
  });

  factory LineServiceType.fromJson(Map<String, dynamic> json) {
    return _$LineServiceTypeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineServiceTypeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
