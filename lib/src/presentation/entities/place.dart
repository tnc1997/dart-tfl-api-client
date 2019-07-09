import './additional_properties.dart';
import '../../internal/serializable.dart';

class Place implements Serializable {
  String id;

  /// The unique location of this resource.
  String url;

  /// The human readable name.
  String commonName;

  /// The distance of the place from its search point.
  double distance;

  /// The type of the place.
  String placeType;

  /// The bag of additional key/value pairs with extra information about this place.
  List<AdditionalProperties> additionalProperties;

  List<Place> children;

  List<String> childrenUrls;

  /// The WGS84 latitude of the location.
  double lat;

  /// The WGS84 longitude of the location.
  double lon;

  Place({
    this.id,
    this.url,
    this.commonName,
    this.distance,
    this.placeType,
    this.additionalProperties,
    this.children,
    this.childrenUrls,
    this.lat,
    this.lon,
  });

  @override
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
      'lon': lon,
    };
  }

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

  static List<Place> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Place>()
        : json.map((value) => Place.fromJson(value)).toList();
  }

  static Map<String, Place> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Place>()
        : json.map((key, value) => MapEntry(key, Place.fromJson(value)));
  }
}
