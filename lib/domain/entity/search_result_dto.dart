class SearchResultDto {
  final int id;
  final String name;
  final String region;
  final String country;
  final double lat;
  final double lon;
  final String url;

  const SearchResultDto(
      {required this.region,
      required this.name,
      required this.lon,
      required this.lat,
      required this.id,
      required this.url,
      required this.country});
}
