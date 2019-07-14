import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';

part 'line_service_type_info.g.dart';

@JsonSerializable()
class LineServiceTypeInfo implements Serializable {
  String name;

  String uri;

  LineServiceTypeInfo({
    this.name,
    this.uri,
  });

  factory LineServiceTypeInfo.fromJson(Map<String, dynamic> json) {
    return _$LineServiceTypeInfoFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$LineServiceTypeInfoToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
