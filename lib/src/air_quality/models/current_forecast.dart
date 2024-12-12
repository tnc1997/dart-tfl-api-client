class CurrentForecast {
  String? forecastText;
  String? forecastType;
  String? forecastID;
  DateTime? publishedDate;
  DateTime? fromDate;
  DateTime? toDate;
  String? forecastBand;
  String? forecastSummary;
  String? nO2Band;
  String? o3Band;
  String? pM10Band;
  String? pM25Band;
  String? sO2Band;

  CurrentForecast({
    this.forecastText,
    this.forecastType,
    this.forecastID,
    this.publishedDate,
    this.fromDate,
    this.toDate,
    this.forecastBand,
    this.forecastSummary,
    this.nO2Band,
    this.o3Band,
    this.pM10Band,
    this.pM25Band,
    this.sO2Band,
  });

  factory CurrentForecast.fromJson(
    Map<String, dynamic> json,
  ) {
    return CurrentForecast(
      forecastText: json['forecastText'] as String?,
      forecastType: json['forecastType'] as String?,
      forecastID: json['forecastID'] as String?,
      publishedDate: json['publishedDate'] == null
          ? null
          : DateTime.parse(json['publishedDate'] as String),
      fromDate: json['fromDate'] == null
          ? null
          : DateTime.parse(json['fromDate'] as String),
      toDate: json['toDate'] == null
          ? null
          : DateTime.parse(json['toDate'] as String),
      forecastBand: json['forecastBand'] as String?,
      forecastSummary: json['forecastSummary'] as String?,
      nO2Band: json['nO2Band'] as String?,
      o3Band: json['o3Band'] as String?,
      pM10Band: json['pM10Band'] as String?,
      pM25Band: json['pM25Band'] as String?,
      sO2Band: json['sO2Band'] as String?,
    );
  }

  static List<CurrentForecast> listFromJson(
    List<dynamic> json,
  ) =>
      json
          .map(
            (value) => CurrentForecast.fromJson(value),
          )
          .toList();

  static Map<String, CurrentForecast> mapFromJson(
    Map<String, dynamic> json,
  ) =>
      json.map(
        (key, value) => MapEntry(
          key,
          CurrentForecast.fromJson(value),
        ),
      );

  Map<String, dynamic> toJson() {
    return {
      'forecastText': forecastText,
      'forecastType': forecastType,
      'forecastID': forecastID,
      'publishedDate': publishedDate?.toIso8601String(),
      'fromDate': fromDate?.toIso8601String(),
      'toDate': toDate?.toIso8601String(),
      'forecastBand': forecastBand,
      'forecastSummary': forecastSummary,
      'nO2Band': nO2Band,
      'o3Band': o3Band,
      'pM10Band': pM10Band,
      'pM25Band': pM25Band,
      'sO2Band': sO2Band,
    };
  }
}
