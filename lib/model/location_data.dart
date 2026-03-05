class LocationData {
  final double latitude;
  final double longitude;
  final String? cityName;

  LocationData({
    required this.latitude,
    required this.longitude,
    this.cityName,
  });
}
