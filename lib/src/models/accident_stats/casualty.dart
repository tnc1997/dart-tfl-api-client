import 'package:json_annotation/json_annotation.dart';

part 'casualty.g.dart';

@JsonSerializable()
class Casualty {
  int? age;
  @JsonKey(name: 'class')
  String? class_;
  String? severity;
  String? mode;
  String? ageBand;

  Casualty({
    this.age,
    this.class_,
    this.severity,
    this.mode,
    this.ageBand,
  });

  factory Casualty.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CasualtyFromJson(json);

  static List<Casualty> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Casualty.fromJson(value),
          )
          .toList();

  static Map<String, Casualty> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Casualty.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$CasualtyToJson(this);
}
