import '../internal/serializable.dart';

class ApiVersionInfo implements Serializable {
  String label;

  DateTime timestamp;

  String version;

  List<String> assemblies;

  ApiVersionInfo({
    this.label,
    this.timestamp,
    this.version,
    this.assemblies,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'timestamp': timestamp == null ? '' : timestamp.toUtc().toIso8601String(),
      'version': version,
      'assemblies': assemblies,
    };
  }

  @override
  String toString() {
    return 'ApiVersionInfo[label=$label, timestamp=$timestamp, version=$version, assemblies=$assemblies]';
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

  static List<ApiVersionInfo> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<ApiVersionInfo>()
        : json.map((value) => ApiVersionInfo.fromJson(value)).toList();
  }

  static Map<String, ApiVersionInfo> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, ApiVersionInfo>()
        : json
            .map((key, value) => MapEntry(key, ApiVersionInfo.fromJson(value)));
  }
}
