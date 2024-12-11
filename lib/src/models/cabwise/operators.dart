import 'package:json_annotation/json_annotation.dart';

import '../operator.dart';

part 'operators.g.dart';

@JsonSerializable()
class Operators {
  List<Operator>? operatorList;

  Operators({
    this.operatorList,
  });

  factory Operators.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$OperatorsFromJson(json);

  static List<Operators> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => Operators.fromJson(value),
          )
          .toList();

  static Map<String, Operators> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          Operators.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() => _$OperatorsToJson(this);
}
