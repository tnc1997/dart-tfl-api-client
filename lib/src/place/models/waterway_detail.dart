import '../../common/models/place.dart';
import 'waterway_line_string.dart';

class WaterwayDetail {
  List<Place>? places;
  int? id;
  String? waterwayName;
  List<String>? types;
  List<WaterwayLineString>? lineStrings;

  WaterwayDetail({
    this.places,
    this.id,
    this.waterwayName,
    this.types,
    this.lineStrings,
  });

  factory WaterwayDetail.fromJson(
    Map<String, dynamic> json,
  ) {
    return WaterwayDetail(
      places: (json['places'] as List<dynamic>?)
          ?.map((e) => Place.fromJson(e as Map<String, dynamic>))
          .toList(),
      id: (json['id'] as num?)?.toInt(),
      waterwayName: json['waterwayName'] as String?,
      types:
          (json['types'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lineStrings: (json['lineStrings'] as List<dynamic>?)
          ?.map((e) => WaterwayLineString.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'places': places,
      'id': id,
      'waterwayName': waterwayName,
      'types': types,
      'lineStrings': lineStrings,
    };
  }
}
