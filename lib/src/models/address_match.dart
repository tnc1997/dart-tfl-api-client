import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/models/search_match.dart';

part 'address_match.g.dart';

@JsonSerializable()
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
  ) =>
      _$AddressMatchFromJson(json);

  static List<AddressMatch> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => AddressMatch.fromJson(value),
          )
          .toList();

  static Map<String, AddressMatch> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          AddressMatch.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$AddressMatchToJson(this);
}
