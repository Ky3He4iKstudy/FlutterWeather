import 'astro_dto.dart';
import 'day_dto.dart';
import 'hours_dto.dart';

class DaysDto {
  final String date;
  final DayDto day;
  final List<HoursDto> hours;
  final AstroDto astroData;

  const DaysDto(
      {required this.date,
      required this.hours,
      required this.astroData,
      required this.day});
}
