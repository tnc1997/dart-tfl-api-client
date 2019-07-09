import '../../internal/serializable.dart';

class Bay implements Serializable {
  String bayType;

  int bayCount;

  int free;

  int occupied;

  Bay({
    this.bayType,
    this.bayCount,
    this.free,
    this.occupied,
  });

  @override
  Map<String, dynamic> toJson() {
    return {
      'bayType': bayType,
      'bayCount': bayCount,
      'free': free,
      'occupied': occupied,
    };
  }

  @override
  String toString() {
    return 'Bay[bayType=$bayType, bayCount=$bayCount, free=$free, occupied=$occupied, ]';
  }

  Bay.fromJson(Map<String, dynamic> json) {
    if (json == null) return;

    bayType = json['bayType'];
    bayCount = json['bayCount'];
    free = json['free'];
    occupied = json['occupied'];
  }

  static List<Bay> listFromJson(
    List<dynamic> json,
  ) {
    return json == null
        ? List<Bay>()
        : json.map((value) => Bay.fromJson(value)).toList();
  }

  static Map<String, Bay> mapFromJson(
    Map<String, Map<String, dynamic>> json,
  ) {
    return json == null || json.isEmpty
        ? Map<String, Bay>()
        : json.map((key, value) => MapEntry(key, Bay.fromJson(value)));
  }
}
