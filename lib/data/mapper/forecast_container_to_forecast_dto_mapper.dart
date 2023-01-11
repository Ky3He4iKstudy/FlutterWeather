import 'package:flutter_weather/data/remote/model/astro_model.dart';
import 'package:flutter_weather/data/remote/model/condition_model.dart';
import 'package:flutter_weather/data/remote/model/forecast_container_model.dart';
import 'package:flutter_weather/data/remote/model/forecast_for_day_model.dart';
import 'package:flutter_weather/domain/entity/astro_dto.dart';
import 'package:flutter_weather/domain/entity/days_dto.dart';
import 'package:flutter_weather/domain/entity/forecast_dto.dart';

import '../../domain/entity/day_dto.dart';
import '../../domain/entity/hours_dto.dart';
import '../../domain/entity/weather_condition_dto.dart';
import '../remote/model/day_model.dart';
import '../remote/model/hour_model.dart';

class ForecastContainerToForecastDtoMapper {
  static ForecastDto mapToDto(ForecastContainerModel model, String location) {
    return ForecastDto(
        days: model.forecast!.forecastday!.map((e) => mapDaysToDto(e)).toList(),
        location: location);
  }

  static DaysDto mapDaysToDto(DayModel model) {
    return DaysDto(
        date: model.date!,
        hours: model.hour!.map((e) => mapHourToDto(e)).toList(),
        astroData: mapAstroToDto(model.astro!),
        day: mapDayToDto(model.day!));
  }

  static HoursDto mapHourToDto(HourModel model) {
    return HoursDto(
        windchill_f: model.windchill_f!,
        is_day: model.is_day!,
        wind_mph: model.wind_mph!,
        precip_in: model.precip_in!,
        temp_c: model.temp_c!,
        precip_mm: model.precip_mm!,
        feelslike_f: model.feelslike_f!,
        condition: mapConditionToDto(model.condition!),
        pressure_in: model.pressure_in!,
        will_it_snow: model.will_it_snow!,
        wind_dir: model.wind_dir!,
        feelslike_c: model.feelslike_c!,
        chance_of_snow: model.chance_of_snow!,
        temp_f: model.temp_f!,
        pressure_mb: model.pressure_mb!,
        chance_of_rain: model.chance_of_rain!,
        time_epoch: model.time_epoch!,
        windchill_c: model.windchill_c!,
        will_it_rain: model.will_it_rain!,
        wind_kph: model.wind_kph!,
        time: model.time!);
  }

  static DayDto mapDayToDto(ForecastForDayModel model) {
    return DayDto(
        mintemp_f: model.mintemp_f!,
        daily_chance_of_rain: model.daily_chance_of_rain!,
        maxtemp_c: model.maxtemp_c!,
        condition: mapConditionToDto(model.condition!),
        avghumidity: model.avghumidity!,
        daily_chance_of_snow: model.daily_chance_of_snow!,
        totalprecip_in: model.totalprecip_in!,
        maxtemp_f: model.maxtemp_f!,
        mintemp_c: model.mintemp_c!,
        avgtemp_c: model.avgtemp_c!,
        totalprecip_mm: model.totalprecip_mm!,
        avgtemp_f: model.avgtemp_f!);
  }

  static WeatherConditionDto mapConditionToDto(ConditionModel model) {
    return WeatherConditionDto(
        code: model.code!, icon: model.icon!, text: model.text!);
  }

  static AstroDto mapAstroToDto(AstroModel model) {
    return AstroDto(
        sunrise: model.sunrise!,
        sunset: model.sunset!,
        moon_phase: model.moon_phase!);
  }
}
