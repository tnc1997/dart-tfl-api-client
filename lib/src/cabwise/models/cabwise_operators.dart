import 'cabwise_operator.dart';

class CabwiseOperators {
  List<CabwiseOperator>? operatorList;

  CabwiseOperators({
    this.operatorList,
  });

  factory CabwiseOperators.fromJson(
    Map<String, dynamic> json,
  ) {
    return CabwiseOperators(
      operatorList: (json['operatorList'] as List<dynamic>?)
          ?.map((e) => CabwiseOperator.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'operatorList': operatorList,
      };
}
