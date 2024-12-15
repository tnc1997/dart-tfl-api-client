import 'disrupted_point.dart';

class DisruptedPointFamily {
  String? naptanId;
  List<DisruptedPoint>? disruptions;
  List<DisruptedPointFamily>? children;

  DisruptedPointFamily({
    this.naptanId,
    this.disruptions,
    this.children,
  });

  factory DisruptedPointFamily.fromJson(
    Map<String, dynamic> json,
  ) {
    return DisruptedPointFamily(
      naptanId: json['naptanId'] as String?,
      disruptions: (json['disruptions'] as List<dynamic>?)
          ?.map((e) => DisruptedPoint.fromJson(e as Map<String, dynamic>))
          .toList(),
      children: (json['children'] as List<dynamic>?)
          ?.map((e) => DisruptedPointFamily.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'naptanId': naptanId,
      'disruptions': disruptions,
      'children': children,
    };
  }
}
