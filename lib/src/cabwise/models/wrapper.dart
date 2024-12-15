import 'header.dart';
import 'operators.dart';

class Wrapper {
  Operators? operators;
  Header? header;

  Wrapper({
    this.operators,
    this.header,
  });

  factory Wrapper.fromJson(
    Map<String, dynamic> json,
  ) {
    return Wrapper(
      operators: json['operators'] == null
          ? null
          : Operators.fromJson(json['operators'] as Map<String, dynamic>),
      header: json['header'] == null
          ? null
          : Header.fromJson(json['header'] as Map<String, dynamic>),
    );
  }

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

  Map<String, dynamic> toJson() {
    return {
      'operators': operators,
      'header': header,
    };
  }
}
