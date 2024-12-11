import 'package:json_annotation/json_annotation.dart';

import 'attribution.dart';

part 'header.g.dart';

@JsonSerializable()
class Header {
  DateTime? publishDateTime;
  String? identifier;
  String? displayTitle;
  String? version;
  String? author;
  String? owner;
  int? refreshRate;
  int? maxLatency;
  int? timeToError;
  String? schedule;
  String? logo;
  String? language;
  Attribution? attribution;

  Header({
    this.publishDateTime,
    this.identifier,
    this.displayTitle,
    this.version,
    this.author,
    this.owner,
    this.refreshRate,
    this.maxLatency,
    this.timeToError,
    this.schedule,
    this.logo,
    this.language,
    this.attribution,
  });

  factory Header.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$HeaderFromJson(json);

  static List<Header> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Header.fromJson(value),
          )
          .toList();

  static Map<String, Header> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Header.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$HeaderToJson(this);
}
