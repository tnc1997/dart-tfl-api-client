class Attribution {
  String? link;
  String? text;
  String? logo;

  Attribution({
    this.link,
    this.text,
    this.logo,
  });

  factory Attribution.fromJson(
    Map<String, dynamic> json,
  ) {
    return Attribution(
      link: json['link'] as String?,
      text: json['text'] as String?,
      logo: json['logo'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'link': link,
      'text': text,
      'logo': logo,
    };
  }
}
