import './additional_properties.dart';

class Place {
  String id;

  /// The unique location of this resource.
  String url;

  /// A human readable name.
  String commonName;

  /// The distance of the place from its search point.
  double distance;

  /// The type of the place.
  String placeType;

  /// A bag of additional key/value pairs with extra information about this place.
  List<AdditionalProperties> additionalProperties;

  List<Place> children;

  List<String> childrenUrls;

  /// WGS84 latitude of the location.
  double lat;

  /// WGS84 longitude of the location.
  double lon;

  Place();

  @override
  String toString() {
    return 'Place[id=$id, url=$url, commonName=$commonName, distance=$distance, placeType=$placeType, additionalProperties=$additionalProperties, children=$children, childrenUrls=$childrenUrls, lat=$lat, lon=$lon, ]';
  }

  Place.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    url = json['url'];
    commonName = json['commonName'];
    distance = json['distance'];
    placeType = json['placeType'];
    additionalProperties =
        AdditionalProperties.listFromJson(json['additionalProperties']);
    children = Place.listFromJson(json['children']);
    childrenUrls =
        (json['childrenUrls'] as List).map((item) => item as String).toList();
    lat = json['lat'];
    lon = json['lon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'commonName': commonName,
      'distance': distance,
      'placeType': placeType,
      'additionalProperties': additionalProperties,
      'children': children,
      'childrenUrls': childrenUrls,
      'lat': lat,
      'lon': lon
    };
  }

  static List<Place> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<Place>()
        : json.map((value) => new Place.fromJson(value)).toList();
  }

  static Map<String, Place> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Place>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new Place.fromJson(value));
    }
    return map;
  }
}
