import 'package:geocoding/geocoding.dart' as geo;
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';

part 'location_repository.g.dart';

class LocationRepository {
  Future<GeoCordinate> getCurrentPosition() async {
    // 端末の位置情報サービス（GPSスイッチ）が有効かチェック
    final bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('位置情報サービスがオフになっています');
    }

    // 権限を確認する
    final status = await Permission.locationWhenInUse.status;

    if (status.isGranted) {
      final position = await Geolocator.getCurrentPosition(
        locationSettings: const LocationSettings(
          accuracy: LocationAccuracy.high, // Android用に高精度モード
          distanceFilter: 100,
        ),
      );

      return GeoCordinate(
        lat: position.latitude,
        lon: position.longitude,
      );
    }

    throw Exception('位置情報の利用が許可されませんでした');
  }

  /// 位置情報からジオコーディングして都市名を返す
  ///
  /// ジオコーディングに失敗した場合は例外を投げる。住所が特定できない項目がある場合は、「現在地」という名前を返す。
  Future<City> getCurrentLocationData({
    required double lat,
    required double lon,
  }) async {
    try {
      await geo.setLocaleIdentifier("ja_JP");

      final List<geo.Placemark> placemarks = await geo.placemarkFromCoordinates(
        lat,
        lon,
      );

      if (placemarks.isNotEmpty) {
        final place = placemarks.first;

        /// locality（市区町村）が存在しない場合は、administrativeArea（都道府県）を使用する
        /// どちらも存在しない場合は「現在地」とする
        final name = place.locality ?? place.administrativeArea ?? '現在地';
        return City(
          name: name,
        );
      } else {
        throw Exception('住所が見つかりませんでした');
      }
    } catch (e) {
      throw Exception('住所が見つかりませんでした');
    }
  }
}

@riverpod
LocationRepository locationRepository(Ref ref) {
  return LocationRepository();
}
