class MapItem {
  String? uri;
  String? type;
  int? size;

  MapItem({
    this.uri,
    this.type,
    this.size,
  });

  factory MapItem.fromJson(
    Map<String, dynamic> json,
  ) {
    return MapItem(
      uri: json['uri'] as String?,
      type: json['type'] as String?,
      size: (json['size'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'type': type,
      'size': size,
    };
  }
}
