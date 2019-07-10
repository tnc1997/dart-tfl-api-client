import './instruction_step.dart';
import '../../internal/serializable.dart';

class Instruction implements Serializable {
  String summary;

  String detailed;

  List<InstructionStep> steps;

  Instruction({
    this.summary,
    this.detailed,
    this.steps,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'summary': summary,
      'detailed': detailed,
      'steps': steps,
    };
  }

  @override
  String toString() {
    return 'Instruction[summary=$summary, detailed=$detailed, steps=$steps]';
  }

  Instruction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    summary = json['summary'];
    detailed = json['detailed'];
    steps = InstructionStep.listFromJson(json['steps']);
  }

  static List<Instruction> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Instruction>()
        : json.map((value) => Instruction.fromJson(value)).toList();
  }

  static Map<String, Instruction> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Instruction>()
        : json.map((key, value) => MapEntry(key, Instruction.fromJson(value)));
  }
}
