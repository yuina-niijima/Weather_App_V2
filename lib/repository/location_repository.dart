import 'package:flutter/foundation.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';

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

  /// 現在地の位置情報を取得し、ジオコーディングして都市名を返す
  ///
  /// 位置情報の取得に失敗した場合やジオコーディングに失敗した場合は、デフォルトで「現在地」という名前のCityを返す
  Future<LocationData> getCurrentLocationData() async {
    final pos = await getCurrentPosition();

    try {
      await geo.setLocaleIdentifier("ja_JP");
      List<geo.Placemark> placemarks = await geo.placemarkFromCoordinates(
        pos.latitude,
        pos.longitude,
      );
      if (placemarks.isNotEmpty) {
        final place = placemarks.first;

        /// locality（市区町村）が存在しない場合は、administrativeArea（都道府県）を使用する
        /// どちらも存在しない場合は「現在地」とする
        final name = place.locality ?? place.administrativeArea ?? '現在地';
        return City(name: name);
      }
    } catch (e) {
      throw Exception('住所が見つかりませんでした');
    }
    return GeoCordinate(lat: pos.latitude, lon: pos.longitude);
  }
}

@riverpod
LocationRepository locationRepository(Ref ref) {
  return LocationRepository();
}
