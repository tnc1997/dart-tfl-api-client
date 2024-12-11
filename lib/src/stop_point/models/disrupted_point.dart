import 'package:json_annotation/json_annotation.dart';

part 'disrupted_point.g.dart';

@JsonSerializable()
class DisruptedPoint {
  String? atcoCode;
  DateTime? fromDate;
  DateTime? toDate;
  String? description;
  String? commonName;
  String? type;
  String? mode;
  String? stationAtcoCode;
  String? appearance;
  String? additionalInformation;

  DisruptedPoint({
    this.atcoCode,
    this.fromDate,
    this.toDate,
    this.description,
    this.commonName,
    this.type,
    this.mode,
    this.stationAtcoCode,
    this.appearance,
    this.additionalInformation,
  });

  factory DisruptedPoint.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisruptedPointFromJson(json);

  static List<DisruptedPoint> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisruptedPoint.fromJson(value),
          )
          .toList();

  static Map<String, DisruptedPoint> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisruptedPoint.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisruptedPointToJson(this);
}
