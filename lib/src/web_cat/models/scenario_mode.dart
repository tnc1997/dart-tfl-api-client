class ScenarioMode {
  String? id;
  String? title;

  ScenarioMode({
    this.id,
    this.title,
  });

  factory ScenarioMode.fromJson(
    Map<String, dynamic> json,
  ) {
    return ScenarioMode(
      id: json['id'] as String?,
      title: json['title'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
    };
  }
}
