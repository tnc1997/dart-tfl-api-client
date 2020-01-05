import 'package:json_annotation/json_annotation.dart';
import 'package:tfl_api_client/src/entities/time_adjustments.dart';
import 'package:tfl_api_client/src/interfaces/serializable.dart';

part 'search_criteria.g.dart';

@JsonSerializable()
class SearchCriteria implements Serializable {
  DateTime dateTime;

  String dateTimeType;
  // enum dateTimeTypeEnum {  Arriving,  Departing,  };

  TimeAdjustments timeAdjustments;

  SearchCriteria({
    this.dateTime,
    this.dateTimeType,
    this.timeAdjustments,
  });

  factory SearchCriteria.fromJson(Map<String, dynamic> json) {
    return _$SearchCriteriaFromJson(json);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$SearchCriteriaToJson(this);
  }

  @override
  String toString() {
    return toJson().toString();
  }
}
