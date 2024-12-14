class LineModeGroup {
  String? modeName;
  List<String>? lineIdentifier;

  LineModeGroup({
    this.modeName,
    this.lineIdentifier,
  });

  factory LineModeGroup.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineModeGroup(
      modeName: json['modeName'] as String?,
      lineIdentifier: (json['lineIdentifier'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'lineIdentifier': lineIdentifier,
    };
  }
}
