import 'package:json_annotation/json_annotation.dart';

part 'line_station_parameter.g.dart';

@JsonSerializable()
class LineStationParameter {
  String? lineId;
  String? naptanId;

  LineStationParameter({
    this.lineId,
    this.naptanId,
  });

  factory LineStationParameter.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$LineStationParameterFromJson(json);

  static List<LineStationParameter> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineStationParameter.fromJson(value),
          )
          .toList();

  static Map<String, LineStationParameter> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineStationParameter.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$LineStationParameterToJson(this);
}
