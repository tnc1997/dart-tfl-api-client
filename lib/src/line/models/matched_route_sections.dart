class MatchedRouteSections {
  int? id;

  MatchedRouteSections({
    this.id,
  });

  factory MatchedRouteSections.fromJson(
    Map<String, dynamic> json,
  ) {
    return MatchedRouteSections(
      id: (json['id'] as num?)?.toInt(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
