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

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'uri': uri,
    };
  }
}
