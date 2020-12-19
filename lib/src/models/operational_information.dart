import 'package:json_annotation/json_annotation.dart';

part 'operational_information.g.dart';

@JsonSerializable()
class OperationalInformation {
  String? direction;
  String? lineId;

  OperationalInformation({
    this.direction,
    this.lineId,
  });

  factory OperationalInformation.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OperationalInformationFromJson(json);

  static List<OperationalInformation> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => OperationalInformation.fromJson(value),
          )
          .toList();

  static Map<String, OperationalInformation> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          OperationalInformation.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$OperationalInformationToJson(this);
}
