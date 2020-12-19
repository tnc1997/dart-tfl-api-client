import 'package:json_annotation/json_annotation.dart';

part 'bay.g.dart';

@JsonSerializable()
class Bay {
  String? bayType;
  int? bayCount;
  int? free;
  int? occupied;

  Bay({
    this.bayType,
    this.bayCount,
    this.free,
    this.occupied,
  });

  factory Bay.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BayFromJson(json);

  static List<Bay> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Bay.fromJson(value),
          )
          .toList();

  static Map<String, Bay> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Bay.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$BayToJson(this);
}
