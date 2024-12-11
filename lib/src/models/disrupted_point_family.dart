import 'package:json_annotation/json_annotation.dart';

import 'disrupted_point.dart';

part 'disrupted_point_family.g.dart';

@JsonSerializable()
class DisruptedPointFamily {
  String? naptanId;
  List<DisruptedPoint>? disruptions;
  List<DisruptedPointFamily>? children;

  DisruptedPointFamily({
    this.naptanId,
    this.disruptions,
    this.children,
  });

  factory DisruptedPointFamily.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$DisruptedPointFamilyFromJson(json);

  static List<DisruptedPointFamily> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => DisruptedPointFamily.fromJson(value),
          )
          .toList();

  static Map<String, DisruptedPointFamily> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          DisruptedPointFamily.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$DisruptedPointFamilyToJson(this);
}
