sealed class LocationData {
  const LocationData();
}

class GeoCordinate extends LocationData {
  final double lat;
  final double lon;

  const GeoCordinate({
    required this.lat,
    required this.lon,
  });
}

class City extends LocationData {
  final String name;

  const City({
    required this.name,
  });
}
