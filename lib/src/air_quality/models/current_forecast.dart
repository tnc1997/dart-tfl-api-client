class CurrentForecast {
  String? forecastText;
  String? forecastType;
  String? forecastId;
  DateTime? publishedDate;
  DateTime? fromDate;
  DateTime? toDate;
  String? forecastBand;
  String? forecastSummary;
  String? no2Band;
  String? o3Band;
  String? pm10Band;
  String? pm25Band;
  String? so2Band;

  CurrentForecast({
    this.forecastText,
    this.forecastType,
    this.forecastId,
    this.publishedDate,
    this.fromDate,
    this.toDate,
    this.forecastBand,
    this.forecastSummary,
    this.no2Band,
    this.o3Band,
    this.pm10Band,
    this.pm25Band,
    this.so2Band,
  });

  factory CurrentForecast.fromJson(
    Map<String, dynamic> json,
  ) {
    return CurrentForecast(
      forecastText: json['forecastText'] as String?,
      forecastType: json['forecastType'] as String?,
      forecastId: json['forecastID'] as String?,
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
      no2Band: json['nO2Band'] as String?,
      o3Band: json['o3Band'] as String?,
      pm10Band: json['pM10Band'] as String?,
      pm25Band: json['pM25Band'] as String?,
      so2Band: json['sO2Band'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'forecastText': forecastText,
      'forecastType': forecastType,
      'forecastID': forecastId,
      'publishedDate': publishedDate?.toIso8601String(),
      'fromDate': fromDate?.toIso8601String(),
      'toDate': toDate?.toIso8601String(),
      'forecastBand': forecastBand,
      'forecastSummary': forecastSummary,
      'nO2Band': no2Band,
      'o3Band': o3Band,
      'pM10Band': pm10Band,
      'pM25Band': pm25Band,
      'sO2Band': so2Band,
    };
  }
}
