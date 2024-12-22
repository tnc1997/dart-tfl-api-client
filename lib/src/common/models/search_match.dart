import 'content_search_match.dart';
import 'matched_stop.dart';
import 'route_search_match.dart';

class SearchMatch {
  String? id;
  String? url;
  String? name;
  double? lat;
  double? lon;

  SearchMatch({
    this.id,
    this.url,
    this.name,
    this.lat,
    this.lon,
  });

  factory SearchMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    switch (json['\$type']) {
      case 'Tfl.Api.Presentation.Entities.ContentSearchMatch, Tfl.Api.Presentation.Entities':
        return ContentSearchMatch.fromJson(json);
      case 'Tfl.Api.Presentation.Entities.MatchedStop, Tfl.Api.Presentation.Entities':
        return MatchedStop.fromJson(json);
      case 'Tfl.Api.Presentation.Entities.RouteSearchMatch, Tfl.Api.Presentation.Entities':
        return RouteSearchMatch.fromJson(json);
      default:
        return SearchMatch(
          id: json['id'] as String?,
          url: json['url'] as String?,
          name: json['name'] as String?,
          lat: (json['lat'] as num?)?.toDouble(),
          lon: (json['lon'] as num?)?.toDouble(),
        );
    }
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'name': name,
      'lat': lat,
      'lon': lon,
    };
  }
}
