import '../../common/models/search_match.dart';

class AddressMatch extends SearchMatch {
  String? addressLineOne;
  String? addressLineTwo;
  String? addressLineThree;
  String? town;
  String? county;
  String? postCode;
  String? country;
  String? buildingNumber;
  String? subBuildingNumber;
  String? buildingName;

  AddressMatch({
    String? id,
    String? url,
    String? name,
    double? lat,
    double? lon,
    this.addressLineOne,
    this.addressLineTwo,
    this.addressLineThree,
    this.town,
    this.county,
    this.postCode,
    this.country,
    this.buildingNumber,
    this.subBuildingNumber,
    this.buildingName,
  }) : super(
          id: id,
          url: url,
          name: name,
          lat: lat,
          lon: lon,
        );

  factory AddressMatch.fromJson(
    Map<String, dynamic> json,
  ) {
    return AddressMatch(
      id: json['id'] as String?,
      url: json['url'] as String?,
      name: json['name'] as String?,
      lat: (json['lat'] as num?)?.toDouble(),
      lon: (json['lon'] as num?)?.toDouble(),
      addressLineOne: json['addressLineOne'] as String?,
      addressLineTwo: json['addressLineTwo'] as String?,
      addressLineThree: json['addressLineThree'] as String?,
      town: json['town'] as String?,
      county: json['county'] as String?,
      postCode: json['postCode'] as String?,
      country: json['country'] as String?,
      buildingNumber: json['buildingNumber'] as String?,
      subBuildingNumber: json['subBuildingNumber'] as String?,
      buildingName: json['buildingName'] as String?,
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
      'addressLineOne': addressLineOne,
      'addressLineTwo': addressLineTwo,
      'addressLineThree': addressLineThree,
      'town': town,
      'county': county,
      'postCode': postCode,
      'country': country,
      'buildingNumber': buildingNumber,
      'subBuildingNumber': subBuildingNumber,
      'buildingName': buildingName,
    };
  }
}
