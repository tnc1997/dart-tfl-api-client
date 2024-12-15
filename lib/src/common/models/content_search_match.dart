import 'search_match.dart';

class ContentSearchMatch extends SearchMatch {
  double? score;
  String? ext;
  DateTime? lastModified;
  DateTime? date;
  List<String>? highlights;

  ContentSearchMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.score,
    this.ext,
    this.lastModified,
    this.date,
    this.highlights,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory ContentSearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return ContentSearchMatch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      score: (json['score'] as num?)?.toDouble(),
      ext: json['ext'] as String?,
      lastModified: json['lastModified'] == null
          ? null
          : DateTime.parse(json['lastModified'] as String),
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      highlights: (json['highlights'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );
  }

  @override
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
      'score': score,
      'ext': ext,
      'lastModified': lastModified?.toIso8601String(),
      'date': date?.toIso8601String(),
      'highlights': highlights,
    };
  }
}
