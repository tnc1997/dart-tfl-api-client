import 'instruction_step.dart';

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
  ) {
    return Instruction(
      summary: json['summary'] as String?,
      detailed: json['detailed'] as String?,
      steps: (json['steps'] as List<dynamic>?)
          ?.map((e) => InstructionStep.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'summary': summary,
      'detailed': detailed,
      'steps': steps,
    };
  }
}
