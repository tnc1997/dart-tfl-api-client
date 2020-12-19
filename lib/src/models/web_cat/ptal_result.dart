import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/web_cat/ptal_scenario.dart';

part 'ptal_result.g.dart';

@JsonSerializable()
class PtalResult {
  String? value;
  DateTime? lastRefreshed;
  PtalScenario? scenario;
  int? gridId;

  PtalResult({
    this.value,
    this.lastRefreshed,
    this.scenario,
    this.gridId,
  });

  factory PtalResult.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PtalResultFromJson(json);

  static List<PtalResult> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PtalResult.fromJson(value),
          )
          .toList();

  static Map<String, PtalResult> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PtalResult.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PtalResultToJson(this);
}
