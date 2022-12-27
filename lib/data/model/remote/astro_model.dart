import 'package:json_annotation/json_annotation.dart';

part 'astro_model.g.dart';

@JsonSerializable()
class AstroModel {
  final String? sunrise;
  final String? sunset;
  final String? moon_phase;


  AstroModel(this.sunrise, this.sunset, this.moon_phase);

  factory AstroModel.fromJson(Map<String, dynamic> json) =>
      _$AstroModelFromJson(json);
}
