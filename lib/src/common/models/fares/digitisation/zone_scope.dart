import 'package:json_annotation/json_annotation.dart';

part 'zone_scope.g.dart';

@JsonSerializable()
class ZoneScope {
  String? zoneFrom;
  String? zoneTo;
  String? description;

  ZoneScope({
    this.zoneFrom,
    this.zoneTo,
    this.description,
  });

  factory ZoneScope.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ZoneScopeFromJson(json);

  static List<ZoneScope> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => ZoneScope.fromJson(value),
          )
          .toList();

  static Map<String, ZoneScope> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          ZoneScope.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$ZoneScopeToJson(this);
}
