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
      link: json['Link'] as String?,
      text: json['Text'] as String?,
      logo: json['Logo'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'Link': link,
      'Text': text,
      'Logo': logo,
    };
  }
}
