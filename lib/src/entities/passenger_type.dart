import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'passenger_type.g.dart';

@JsonSerializable()
class PassengerType implements Serializable {
  String type;

  String description;

  String displayName;

  int displayOrder;

  PassengerType({
    this.type,
    this.description,
    this.displayName,
    this.displayOrder,
  });

  factory PassengerType.fromJson(Map<String, dynamic> json) {
    return _$PassengerTypeFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$PassengerTypeToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
