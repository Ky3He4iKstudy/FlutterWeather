class WeatherConditionDto {
  final String text;
  final String icon;
  final int code;

  const WeatherConditionDto(
      {required this.code, required this.icon, required this.text});
}
