import '../internal/serializable.dart';

class PostcodeInput implements Serializable {
  String postcode;

  PostcodeInput({
    this.postcode,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'postcode': postcode,
    };
  }

  @override
  String toString() {
    return 'PostcodeInput[postcode=$postcode, ]';
  }

  PostcodeInput.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    postcode = json['postcode'];
  }

  static List<PostcodeInput> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<PostcodeInput>()
        : json.map((value) => PostcodeInput.fromJson(value)).toList();
  }

  static Map<String, PostcodeInput> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, PostcodeInput>()
        : json
            .map((key, value) => MapEntry(key, PostcodeInput.fromJson(value)));
  }
}
