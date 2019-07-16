import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'active_service_type.g.dart';

@JsonSerializable()
class ActiveServiceType implements Serializable {
  String mode;

  String serviceType;

  ActiveServiceType({
    this.mode,
    this.serviceType,
  });

  factory ActiveServiceType.fromJson(Map<String, dynamic> json) {
    return _$ActiveServiceTypeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$ActiveServiceTypeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
