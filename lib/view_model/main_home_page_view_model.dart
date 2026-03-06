import 'package:permission_handler/permission_handler.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/repository/location_repository.dart';

part 'main_home_page_view_model.g.dart';

@riverpod
class MainHomeViewModel extends _$MainHomeViewModel {
  @override
  void build() {
    return;
  }

  // 位置情報の権限を要求するロジック
  Future<void> requestLocationPermission() async {
    await Permission.locationWhenInUse.request();
  }

  // 現在地の天気を見るボタンの処理
  Future<LocationData?> fetchCurrentCity() async {
    final repository = ref.read(locationRepositoryProvider);
    final data = await repository.getCurrentLocationData();

    return data;
  }
}
