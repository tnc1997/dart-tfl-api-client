import 'package:json_annotation/json_annotation.dart';

part 'mode.g.dart';

@JsonSerializable()
class Mode {
  bool? isTflService;
  bool? isFarePaying;
  bool? isScheduledService;
  String? modeName;

  Mode({
    this.isTflService,
    this.isFarePaying,
    this.isScheduledService,
    this.modeName,
  });

  factory Mode.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ModeFromJson(json);

  static List<Mode> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Mode.fromJson(value),
          )
          .toList();

  static Map<String, Mode> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Mode.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ModeToJson(this);
}
