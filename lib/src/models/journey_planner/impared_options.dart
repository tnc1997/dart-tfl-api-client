import 'package:json_annotation/json_annotation.dart';

part 'impared_options.g.dart';

@JsonSerializable()
class ImparedOptions {
  bool? lowPlatformVehicle;
  bool? noEscalators;
  bool? noElevators;
  bool? noSolidStairs;
  bool? needElevatedPlatform;

  ImparedOptions({
    this.lowPlatformVehicle,
    this.noEscalators,
    this.noElevators,
    this.noSolidStairs,
    this.needElevatedPlatform,
  });

  factory ImparedOptions.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ImparedOptionsFromJson(json);

  static List<ImparedOptions> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ImparedOptions.fromJson(value),
          )
          .toList();

  static Map<String, ImparedOptions> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ImparedOptions.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ImparedOptionsToJson(this);
}
