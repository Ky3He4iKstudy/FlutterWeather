import 'package:flutter_weather/domain/entity/days_dto.dart';

class ForecastDto {
  final List<DaysDto> days;

  const ForecastDto({required this.days});
}
