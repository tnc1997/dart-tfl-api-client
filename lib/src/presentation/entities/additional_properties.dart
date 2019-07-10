import '../../internal/serializable.dart';

class AdditionalProperties implements Serializable {
  String category;

  String key;

  String sourceSystemKey;

  String value;

  DateTime modified;

  AdditionalProperties({
    this.category,
    this.key,
    this.sourceSystemKey,
    this.value,
    this.modified,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'key': key,
      'sourceSystemKey': sourceSystemKey,
      'value': value,
      'modified': modified == null ? '' : modified.toUtc().toIso8601String(),
    };
  }

  @override
  String toString() {
    return 'AdditionalProperties[category=$category, key=$key, sourceSystemKey=$sourceSystemKey, value=$value, modified=$modified]';
  }

  AdditionalProperties.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    category = json['category'];
    key = json['key'];
    sourceSystemKey = json['sourceSystemKey'];
    value = json['value'];
    modified =
        json['modified'] == null ? null : DateTime.parse(json['modified']);
  }

  static List<AdditionalProperties> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<AdditionalProperties>()
        : json.map((value) => AdditionalProperties.fromJson(value)).toList();
  }

  static Map<String, AdditionalProperties> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, AdditionalProperties>()
        : json.map((key, value) =>
            MapEntry(key, AdditionalProperties.fromJson(value)));
  }
}
