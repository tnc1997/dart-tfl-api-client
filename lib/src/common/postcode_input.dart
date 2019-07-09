class PostcodeInput {
  String postcode;

  PostcodeInput();

  @override
  String toString() {
    return 'PostcodeInput[postcode=$postcode, ]';
  }

  PostcodeInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    postcode = json['postcode'];
  }

  Map<String, dynamic> toJson() {
    return {'postcode': postcode};
  }

  static List<PostcodeInput> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<PostcodeInput>()
        : json.map((value) => new PostcodeInput.fromJson(value)).toList();
  }

  static Map<String, PostcodeInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PostcodeInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new PostcodeInput.fromJson(value));
    }
    return map;
  }
}
