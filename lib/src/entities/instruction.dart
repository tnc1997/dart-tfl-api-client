import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/instruction_step.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'instruction.g.dart';

@JsonSerializable()
class Instruction implements Serializable {
  String summary;

  String detailed;

  List<InstructionStep> steps;

  Instruction({
    this.summary,
    this.detailed,
    this.steps,
  });

  factory Instruction.fromJson(Map<String, dynamic> json) {
    return _$InstructionFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$InstructionToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
