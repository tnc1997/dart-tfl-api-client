import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/fares/fare_details.dart';
import 'package:tfl_api_client/src/models/fares/journey.dart';
import 'package:tfl_api_client/src/models/message.dart';

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
