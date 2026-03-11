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

  /// 現在地の位置情報を取得する
  Future<GeoCordinate> fetchCurrentGeoCordinate() async {
    final repository = ref.read(locationRepositoryProvider);
    final geoCordinate = await repository.getCurrentPosition();

    return geoCordinate;
  }
}
