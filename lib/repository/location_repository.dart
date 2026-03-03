import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_repository.g.dart';

class LocationRepository {
  Future<Position> getCurrentPosition() async {
    final status = await Permission.locationWhenInUse.status;

    if (status.isGranted) {
      return await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.low,
          distanceFilter: 100,
        ),
      );
    }

    throw Exception('位置情報の利用が許可されませんでした');
  }
}

@riverpod
LocationRepository locationRepository(Ref ref) {
  return LocationRepository();
}
