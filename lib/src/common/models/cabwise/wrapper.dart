import 'package:json_annotation/json_annotation.dart';

import 'header.dart';
import 'operators.dart';

part 'wrapper.g.dart';

@JsonSerializable()
class Wrapper {
  Operators? operators;
  Header? header;

  Wrapper({
    this.operators,
    this.header,
  });

  factory Wrapper.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WrapperFromJson(json);

  static List<Wrapper> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Wrapper.fromJson(value),
          )
          .toList();

  static Map<String, Wrapper> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Wrapper.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$WrapperToJson(this);
}
