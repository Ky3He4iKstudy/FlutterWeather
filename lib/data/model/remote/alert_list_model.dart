// @Serializable
// data class AlertList(
// val alert: List<Alert>
// )
//
import 'package:flutter_weather/data/model/remote/alert_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'alert_list_model.g.dart';

@JsonSerializable()
class AlertListModel {
  final List<AlertModel>? alert;

  AlertListModel(this.alert);

  factory AlertListModel.fromJson(Map<String, dynamic> json) =>
      _$AlertListModelFromJson(json);
}