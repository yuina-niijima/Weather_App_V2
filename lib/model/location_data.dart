sealed class LocationData {
  const LocationData();
  String getName() {
    final data = this;
    if (data is City) {
      return data.name;
    }
    return '現在地';
  }
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
