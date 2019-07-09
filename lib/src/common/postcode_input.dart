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
        ? List<PostcodeInput>()
        : json.map((value) => PostcodeInput.fromJson(value)).toList();
  }

  static Map<String, PostcodeInput> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = Map<String, PostcodeInput>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = PostcodeInput.fromJson(value));
    }
    return map;
  }
}
