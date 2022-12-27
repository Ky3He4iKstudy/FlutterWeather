import 'package:flutter_weather/domain/entity/weather_condition_dto.dart';

class DayDto {
  final WeatherConditionDto condition;
  final double avgtemp_f;
  final double maxtemp_f;
  final double mintemp_f;
  final double avgtemp_c;
  final double maxtemp_c;
  final double mintemp_c;
  final double daily_chance_of_rain;
  final double daily_chance_of_snow;
  final double totalprecip_in;
  final double totalprecip_mm;
  final double avghumidity;

  const DayDto(
      {required this.mintemp_f,
      required this.daily_chance_of_rain,
      required this.maxtemp_c,
      required this.condition,
      required this.avghumidity,
      required this.daily_chance_of_snow,
      required this.totalprecip_in,
      required this.maxtemp_f,
      required this.mintemp_c,
      required this.avgtemp_c,
      required this.totalprecip_mm,
      required this.avgtemp_f});
}
