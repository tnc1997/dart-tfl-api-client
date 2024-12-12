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

  static List<MapItem> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => MapItem.fromJson(value),
          )
          .toList();

  static Map<String, MapItem> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          MapItem.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'uri': uri,
      'type': type,
      'size': size,
    };
  }
}
