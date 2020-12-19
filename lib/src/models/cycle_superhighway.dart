import 'package:json_annotation/json_annotation.dart';

part 'cycle_superhighway.g.dart';

@JsonSerializable()
class CycleSuperhighway {
  String? id;
  String? label;
  String? labelShort;
  bool? segmented;
  DateTime? modified;
  String? status;
  String? routeType;

  CycleSuperhighway({
    this.id,
    this.label,
    this.labelShort,
    this.segmented,
    this.modified,
    this.status,
    this.routeType,
  });

  factory CycleSuperhighway.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CycleSuperhighwayFromJson(json);

  static List<CycleSuperhighway> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CycleSuperhighway.fromJson(value),
          )
          .toList();

  static Map<String, CycleSuperhighway> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CycleSuperhighway.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CycleSuperhighwayToJson(this);
}
