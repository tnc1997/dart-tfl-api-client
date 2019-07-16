import 'package:json_annotation/json_annotation.dart';

import '../interfaces/serializable.dart';
import 'message.dart';
import 'fare_details.dart';

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
