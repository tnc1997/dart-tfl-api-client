class CabwiseAttribution {
  String? link;
  String? text;
  String? logo;

  CabwiseAttribution({
    this.link,
    this.text,
    this.logo,
  });

  factory CabwiseAttribution.fromJson(
    Map<String, dynamic> json,
  ) {
    return CabwiseAttribution(
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
