import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/instruction_step.dart';

part 'instruction.g.dart';

@JsonSerializable()
class Instruction {
  String? summary;
  String? detailed;
  List<InstructionStep>? steps;

  Instruction({
    this.summary,
    this.detailed,
    this.steps,
  });

  factory Instruction.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$InstructionFromJson(json);

  static List<Instruction> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Instruction.fromJson(value),
          )
          .toList();

  static Map<String, Instruction> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Instruction.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$InstructionToJson(this);
}
