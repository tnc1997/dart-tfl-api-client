import 'cabwise_header.dart';
import 'cabwise_operators.dart';

class CabwiseWrapper {
  CabwiseOperators? operators;
  CabwiseHeader? header;

  CabwiseWrapper({
    this.operators,
    this.header,
  });

  factory CabwiseWrapper.fromJson(
    Map<String, dynamic> json,
  ) {
    return CabwiseWrapper(
      operators: json['Operators'] == null
          ? null
          : CabwiseOperators.fromJson(
              json['Operators'] as Map<String, dynamic>),
      header: json['Header'] == null
          ? null
          : CabwiseHeader.fromJson(json['Header'] as Map<String, dynamic>),
    );
  }

  static List<CabwiseWrapper> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CabwiseWrapper.fromJson(value),
          )
          .toList();

  static Map<String, CabwiseWrapper> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CabwiseWrapper.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'Operators': operators,
      'Header': header,
    };
  }
}
