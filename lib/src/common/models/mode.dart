import 'identifiable.dart';
import 'identifier.dart';

class Mode implements Identifiable {
  bool? isTflService;
  bool? isFarePaying;
  bool? isScheduledService;
  String? modeName;
  String? motType;
  String? network;

  Mode({
    this.isTflService,
    this.isFarePaying,
    this.isScheduledService,
    this.modeName,
    this.motType,
    this.network,
  });

  factory Mode.fromJson(
    Map<String, dynamic> json,
  ) {
    return Mode(
      isTflService: json['isTflService'] as bool?,
      isFarePaying: json['isFarePaying'] as bool?,
      isScheduledService: json['isScheduledService'] as bool?,
      modeName: json['modeName'] as String?,
      motType: json['motType'] as String?,
      network: json['network'] as String?,
    );
  }

  @override
  Identifier toIdentifier() {
    return Identifier(
      id: modeName,
      name: modeName,
      type: 'Mode',
      motType: motType,
      network: network,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'isTflService': isTflService,
      'isFarePaying': isFarePaying,
      'isScheduledService': isScheduledService,
      'modeName': modeName,
      'motType': motType,
      'network': network,
    };
  }
}
