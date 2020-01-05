import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/timetables_disambiguation_option.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'timetables_disambiguation.g.dart';

@JsonSerializable()
class TimetablesDisambiguation implements Serializable {
  List<TimetablesDisambiguationOption> disambiguationOptions;

  TimetablesDisambiguation({
    this.disambiguationOptions,
  });

  factory TimetablesDisambiguation.fromJson(Map<String, dynamic> json) {
    return _$TimetablesDisambiguationFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$TimetablesDisambiguationToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
