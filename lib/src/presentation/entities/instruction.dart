import './instruction_step.dart';

class Instruction {
  String summary;

  String detailed;

  List<InstructionStep> steps;

  Instruction();

  @override
  String toString() {
    return 'Instruction[summary=$summary, detailed=$detailed, steps=$steps, ]';
  }

  Instruction.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    summary = json['summary'];
    detailed = json['detailed'];
    steps = InstructionStep.listFromJson(json['steps']);
  }

  Map<String, dynamic> toJson() {
    return {'summary': summary, 'detailed': detailed, 'steps': steps};
  }

  static List<Instruction> listFromJson(List<dynamic> json) {
    return json == null
        ? List<Instruction>()
        : json.map((value) => Instruction.fromJson(value)).toList();
  }

  static Map<String, Instruction> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, Instruction>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = Instruction.fromJson(value));
    }
    return map;
  }
}
