import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'location_repository.g.dart';

class LocationRepository {
  Future<Position> getCurrentPosition() async {
    // 権限確認（permission_handler）
    var status = await Permission.locationWhenInUse.status;

    if (status.isDenied) {
      status = await Permission.locationWhenInUse.request();
    }

    if (status.isPermanentlyDenied) {
      await openAppSettings();
      throw Exception('位置情報の許可を本体設定からオンにしてください');
    }

    // 許可された場合に位置を取得
    if (status.isGranted) {
      const locationSettings = LocationSettings(
        accuracy: LocationAccuracy.low, // 精度
        distanceFilter: 100,
      );

      return await Geolocator.getCurrentPosition(
        locationSettings: locationSettings,
      );
    }

    throw Exception('位置情報の利用が許可されませんでした');
  }
}

@riverpod
LocationRepository locationRepository(Ref ref) {
  return LocationRepository();
}
