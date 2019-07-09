class AdditionalProperties {
  String category;

  String key;

  String sourceSystemKey;

  String value;

  DateTime modified;

  AdditionalProperties();

  @override
  String toString() {
    return 'AdditionalProperties[category=$category, key=$key, sourceSystemKey=$sourceSystemKey, value=$value, modified=$modified, ]';
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

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'key': key,
      'sourceSystemKey': sourceSystemKey,
      'value': value,
      'modified': modified == null ? '' : modified.toUtc().toIso8601String()
    };
  }

  static List<AdditionalProperties> listFromJson(List<dynamic> json) {
    return json == null
        ? List<AdditionalProperties>()
        : json.map((value) => AdditionalProperties.fromJson(value)).toList();
  }

  static Map<String, AdditionalProperties> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, AdditionalProperties>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = AdditionalProperties.fromJson(value));
    }
    return map;
  }
}
