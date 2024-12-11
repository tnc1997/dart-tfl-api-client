import 'package:json_annotation/json_annotation.dart';

part 'active_service_type.g.dart';

@JsonSerializable()
class ActiveServiceType {
  String? mode;
  String? serviceType;

  ActiveServiceType({
    this.mode,
    this.serviceType,
  });

  factory ActiveServiceType.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ActiveServiceTypeFromJson(json);

  static List<ActiveServiceType> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ActiveServiceType.fromJson(value),
          )
          .toList();

  static Map<String, ActiveServiceType> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ActiveServiceType.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ActiveServiceTypeToJson(this);
}
