class PtalContour {
  String? ptalValue;
  String? contourGeometry;

  PtalContour({
    this.ptalValue,
    this.contourGeometry,
  });

  factory PtalContour.fromJson(
    Map<String, dynamic> json,
  ) {
    return PtalContour(
      ptalValue: json['ptalValue'] as String?,
      contourGeometry: json['contourGeometry'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ptalValue': ptalValue,
      'contourGeometry': contourGeometry,
    };
  }
}
