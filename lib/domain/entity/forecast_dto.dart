import 'package:flutter_weather/domain/entity/days_dto.dart';

class ForecastDto {
  final List<DaysDto> days;
  String location;

  ForecastDto({required this.days, this.location = ""});
}
