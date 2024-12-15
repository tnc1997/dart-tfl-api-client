import 'operator.dart';

class Operators {
  List<Operator>? operatorList;

  Operators({
    this.operatorList,
  });

  factory Operators.fromJson(
    Map<String, dynamic> json,
  ) {
    return Operators(
      operatorList: (json['operatorList'] as List<dynamic>?)
          ?.map((e) => Operator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'operatorList': operatorList,
      };
}
