class LineServiceTypeInfo {
  String? name;
  String? uri;

  LineServiceTypeInfo({
    this.name,
    this.uri,
  });

  factory LineServiceTypeInfo.fromJson(
    Map<String, dynamic> json,
  ) {
    return LineServiceTypeInfo(
      name: json['name'] as String?,
      uri: json['uri'] as String?,
    );
  }

  static List<LineServiceTypeInfo> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => LineServiceTypeInfo.fromJson(value),
          )
          .toList();

  static Map<String, LineServiceTypeInfo> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          LineServiceTypeInfo.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uri': uri,
    };
  }
}
