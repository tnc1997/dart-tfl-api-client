import 'package:json_annotation/json_annotation.dart';

part 'passenger_type.g.dart';

@JsonSerializable()
class PassengerType {
  String? type;
  String? description;
  String? displayName;
  int? displayOrder;

  PassengerType({
    this.type,
    this.description,
    this.displayName,
    this.displayOrder,
  });

  factory PassengerType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PassengerTypeFromJson(json);

  static List<PassengerType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PassengerType.fromJson(value),
          )
          .toList();

  static Map<String, PassengerType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PassengerType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PassengerTypeToJson(this);
}
