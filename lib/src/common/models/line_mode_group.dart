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

  static List<LineModeGroup> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineModeGroup.fromJson(value),
          )
          .toList();

  static Map<String, LineModeGroup> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineModeGroup.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'lineIdentifier': lineIdentifier,
    };
  }
}
