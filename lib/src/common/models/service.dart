import 'package:json_annotation/json_annotation.dart';

part 'service.g.dart';

@JsonSerializable()
class Service {
  String? id;
  String? lineId;
  DateTime? validTo;

  Service({
    this.id,
    this.lineId,
    this.validTo,
  });

  factory Service.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ServiceFromJson(json);

  static List<Service> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Service.fromJson(value),
          )
          .toList();

  static Map<String, Service> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Service.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ServiceToJson(this);
}
