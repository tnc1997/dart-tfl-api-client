import 'package:json_annotation/json_annotation.dart';

import '../message.dart';
import 'fare_details.dart';
import 'journey.dart';

part 'fares_section.g.dart';

@JsonSerializable()
class FaresSection {
  String? header;
  int? index;
  Journey1? journey;
  List<FareDetails>? rows;
  List<Message>? messages;

  FaresSection({
    this.header,
    this.index,
    this.journey,
    this.rows,
    this.messages,
  });

  factory FaresSection.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FaresSectionFromJson(json);

  static List<FaresSection> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => FaresSection.fromJson(value),
          )
          .toList();

  static Map<String, FaresSection> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          FaresSection.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$FaresSectionToJson(this);
}
