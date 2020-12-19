import 'package:json_annotation/json_annotation.dart';

part 'public_transport_options.g.dart';

@JsonSerializable()
class PublicTransportOptions {
  int? maxChanges;
  String? routeType;

  PublicTransportOptions({
    this.maxChanges,
    this.routeType,
  });

  factory PublicTransportOptions.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PublicTransportOptionsFromJson(json);

  static List<PublicTransportOptions> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => PublicTransportOptions.fromJson(value),
          )
          .toList();

  static Map<String, PublicTransportOptions> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          PublicTransportOptions.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$PublicTransportOptionsToJson(this);
}
