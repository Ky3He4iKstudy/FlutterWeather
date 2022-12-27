import 'package:flutter_weather/domain/entity/weather_condition_dto.dart';

class HoursDto {
  final int time_epoch;
  final String time;
  final double temp_f;
  final double temp_c;
  final int is_day;
  final WeatherConditionDto condition;
  final double wind_mph;
  final double wind_kph;
  final String wind_dir;
  final int chance_of_rain;
  final double pressure_mb;
  final double pressure_in;
  final int will_it_rain;
  final double chance_of_snow;
  final int will_it_snow;
  final double precip_mm;
  final double precip_in;
  final double feelslike_c;
  final double feelslike_f;
  final double windchill_c;
  final double windchill_f;

  const HoursDto(
      {required this.windchill_f,
      required this.is_day,
      required this.wind_mph,
      required this.precip_in,
      required this.temp_c,
      required this.precip_mm,
      required this.feelslike_f,
      required this.condition,
      required this.pressure_in,
      required this.will_it_snow,
      required this.wind_dir,
      required this.feelslike_c,
      required this.chance_of_snow,
      required this.temp_f,
      required this.pressure_mb,
      required this.chance_of_rain,
      required this.time_epoch,
      required this.windchill_c,
      required this.will_it_rain,
      required this.wind_kph,
      required this.time});
}
