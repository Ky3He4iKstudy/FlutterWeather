class LocationDto {
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String tz_id;
  final int localtime_epoch;
  final String localtime;

  const LocationDto(
      {required this.name,
      required this.localtime_epoch,
      required this.country,
      required this.tz_id,
      required this.lat,
      required this.region,
      required this.lon,
      required this.localtime});
}
