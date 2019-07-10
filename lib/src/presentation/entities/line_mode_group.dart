import '../../internal/serializable.dart';

class LineModeGroup implements Serializable {
  String modeName;

  List<String> lineIdentifier;

  LineModeGroup({
    this.modeName,
    this.lineIdentifier,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'modeName': modeName,
      'lineIdentifier': lineIdentifier,
    };
  }

  @override
  String toString() {
    return 'LineModeGroup[modeName=$modeName, lineIdentifier=$lineIdentifier]';
  }

  LineModeGroup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    modeName = json['modeName'];
    lineIdentifier =
        (json['lineIdentifier'] as List).map((item) => item as String).toList();
  }

  static List<LineModeGroup> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<LineModeGroup>()
        : json.map((value) => LineModeGroup.fromJson(value)).toList();
  }

  static Map<String, LineModeGroup> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, LineModeGroup>()
        : json
            .map((key, value) => MapEntry(key, LineModeGroup.fromJson(value)));
  }
}
