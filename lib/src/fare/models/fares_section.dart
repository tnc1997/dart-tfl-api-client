import 'fare_details.dart';
import 'journey.dart';
import 'message.dart';

class FaresSection {
  String? header;
  int? index;
  FareJourney? journey;
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
  ) {
    return FaresSection(
      header: json['header'] as String?,
      index: (json['index'] as num?)?.toInt(),
      journey: json['journey'] == null
          ? null
          : FareJourney.fromJson(json['journey'] as Map<String, dynamic>),
      rows: (json['rows'] as List<dynamic>?)
          ?.map((e) => FareDetails.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'header': header,
      'index': index,
      'journey': journey,
      'rows': rows,
      'messages': messages,
    };
  }
}
