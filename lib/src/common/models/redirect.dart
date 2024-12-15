class Redirect {
  String? shortUrl;
  String? longUrl;
  bool? active;

  Redirect({
    this.shortUrl,
    this.longUrl,
    this.active,
  });

  factory Redirect.fromJson(
    Map<String, dynamic> json,
  ) {
    return Redirect(
      shortUrl: json['shortUrl'] as String?,
      longUrl: json['longUrl'] as String?,
      active: json['active'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'shortUrl': shortUrl,
      'longUrl': longUrl,
      'active': active,
    };
  }
}
