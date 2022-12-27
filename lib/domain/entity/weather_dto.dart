class WeatherDto {
  final String location;
  final String temp;
  final String location_coord;
  final String imgSrcUrl;
  final String conditionText;
  final double windSpeed;
  final String windDirection;
  final String time;
  final int code;
  final String country;
  final String feelsLikeTemp;
  final int humidity;

  const WeatherDto(
      {required this.location_coord,
      required this.conditionText,
      required this.temp,
      required this.country,
      required this.humidity,
      required this.windDirection,
      required this.feelsLikeTemp,
      required this.imgSrcUrl,
      required this.code,
      required this.location,
      required this.time,
      required this.windSpeed});
}
