import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'line_service_type_info.dart';

part 'line_specific_service_type.g.dart';

@JsonSerializable()
class LineSpecificServiceType implements Serializable {
  LineServiceTypeInfo serviceType;

  bool stopServesServiceType;

  LineSpecificServiceType({
    this.serviceType,
    this.stopServesServiceType,
  });

  factory LineSpecificServiceType.fromJson(Map<String, dynamic> json) {
    return _$LineSpecificServiceTypeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineSpecificServiceTypeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
