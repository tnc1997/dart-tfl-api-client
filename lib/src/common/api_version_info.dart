class ApiVersionInfo {
  String label;

  DateTime timestamp;

  String version;

  List<String> assemblies;

  ApiVersionInfo();

  @override
  String toString() {
    return 'ApiVersionInfo[label=$label, timestamp=$timestamp, version=$version, assemblies=$assemblies, ]';
  }

  ApiVersionInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    timestamp =
        json['timestamp'] == null ? null : DateTime.parse(json['timestamp']);
    version = json['version'];
    assemblies =
        (json['assemblies'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'version': version,
      'assemblies': assemblies
    };
  }

  static List<ApiVersionInfo> listFromJson(List<dynamic> json) {
    return json == null
        ? List<ApiVersionInfo>()
        : json.map((value) => ApiVersionInfo.fromJson(value)).toList();
  }

  static Map<String, ApiVersionInfo> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, ApiVersionInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = ApiVersionInfo.fromJson(value));
    }
    return map;
  }
}
