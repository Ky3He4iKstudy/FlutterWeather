import 'package:flutter_weather/data/remote/model/weather_container_model.dart';
import 'package:flutter_weather/domain/entity/weather_dto.dart';

class WeatherContainerToWeatherDtoMapper {
  static WeatherDto mapToDto(WeatherContainerModel model, String loc) {
    return WeatherDto(
        location_coord: loc,
        conditionText: model.current!.condition!.text!,
        temp: model.current!.temp_c!.toInt().toString(),
        country: model.location!.country!,
        humidity: model.current!.humidity!,
        windDirection: model.current!.wind_dir!,
        feelsLikeTemp: model.current!.feelslike_c!.toInt().toString(),
        imgSrcUrl: model.current!.condition!.icon!,
        code: model.current!.condition!.code!,
        location: model.location!.name!,
        time: model.location!.localtime!,
        windSpeed: model.current!.wind_kph!);
  }
}
