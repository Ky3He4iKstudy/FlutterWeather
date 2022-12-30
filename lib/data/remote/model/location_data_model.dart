import 'package:json_annotation/json_annotation.dart';

part 'location_data_model.g.dart';

@JsonSerializable()
class LocationDataModel {
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? tz_id;
  final int? localtime_epoch;
  final String? localtime;


  LocationDataModel(this.name, this.region, this.country, this.lat, this.lon,
      this.tz_id, this.localtime_epoch, this.localtime);

  factory LocationDataModel.fromJson(Map<String, dynamic> json) =>
      _$LocationDataModelFromJson(json);
}
