import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/fare_details.dart';
import 'package:tfl_api_client/src/entities/message.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'fares_section.g.dart';

@JsonSerializable()
class FaresSection implements Serializable {
  String header;

  int index;

  List<FareDetails> rows;

  List<Message> messages;

  FaresSection({
    this.header,
    this.index,
    this.rows,
    this.messages,
  });

  factory FaresSection.fromJson(Map<String, dynamic> json) {
    return _$FaresSectionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$FaresSectionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
