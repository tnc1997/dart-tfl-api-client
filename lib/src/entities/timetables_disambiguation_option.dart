import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'timetables_disambiguation_option.g.dart';

@JsonSerializable()
class TimetablesDisambiguationOption implements Serializable {
  String description;

  String uri;

  TimetablesDisambiguationOption({
    this.description,
    this.uri,
  });

  factory TimetablesDisambiguationOption.fromJson(Map<String, dynamic> json) {
    return _$TimetablesDisambiguationOptionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimetablesDisambiguationOptionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
