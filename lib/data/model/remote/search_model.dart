import 'package:json_annotation/json_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  final int? id;
  final String? name;
  final String? region;
  final String? country;
  final double? lat;
  final double? lon;
  final String? url;


  SearchModel(this.id, this.name, this.region, this.country, this.lat, this.lon,
      this.url);

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
}