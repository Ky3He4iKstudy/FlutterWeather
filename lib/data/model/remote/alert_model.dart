import 'package:json_annotation/json_annotation.dart';

part 'alert_model.g.dart';

@JsonSerializable()
class AlertModel {
  final String? headline;
  final String? category;
  final String? severity;
  final String? event;
  final String? effective;
  final String? expires;
  final String? desc;


  AlertModel(this.headline, this.category, this.severity, this.event,
      this.effective, this.expires, this.desc);

  factory AlertModel.fromJson(Map<String, dynamic> json) =>
      _$AlertModelFromJson(json);
}