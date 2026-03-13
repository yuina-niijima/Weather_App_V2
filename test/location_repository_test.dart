import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:geocoding/geocoding.dart' as geo;
import 'package:weather_app_v2/repository/location_repository.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// geocodingがimplementsだけだと怒られたのでMockPlatformInterfaceMixinを追加
class MockGeocodingPlatform extends Mock
    with
        MockPlatformInterfaceMixin // 公式のすり替え許可証。withで機能を混ぜる
    implements geo.GeocodingPlatform {} // 本物のメソッドの形だけ借りる

void main() {
  // setUpで初期化して使い回したいのでlateで宣言
  late LocationRepository repository; // テスト対象の本物
  late MockGeocodingPlatform mockGeocoding; // 操作するための偽物

  setUp(() {
    repository = LocationRepository();
    mockGeocoding = MockGeocodingPlatform();
    geo.GeocodingPlatform.instance = mockGeocoding;

    // 言語設定はとりあえずモックしておく。any()でどんな引数もキャッチ
    when(
      () => mockGeocoding.setLocaleIdentifier(any()),
    ).thenAnswer((_) async => {}); // 何もしない
  });

  group('getCurrentLocationDataのテスト', () {
    // 東京駅の座標
    const tLat = 35.681; // t: test用の
    const tLon = 139.7671;

    test('localityが取れるならそれを返す', () async {
      final tPlacemark = geo.Placemark(
        locality: '千代田区',
        administrativeArea: '東京都',
      );
      when(
        () => mockGeocoding.placemarkFromCoordinates(any(), any()),
      ).thenAnswer((_) async => [tPlacemark]);

      final result = await repository.getCurrentLocationData(
        lat: tLat,
        lon: tLon,
      );

      expect(result.name, '千代田区');
    });

    test('localityがnullのときは都道府県を返す', () async {
      final tPlacemark = geo.Placemark(
        locality: null,
        administrativeArea: '東京都',
      );
      when(
        () => mockGeocoding.placemarkFromCoordinates(any(), any()),
      ).thenAnswer((_) async => [tPlacemark]);

      final result = await repository.getCurrentLocationData(
        lat: tLat,
        lon: tLon,
      );

      expect(result.name, '東京都');
    });

    test('住所がどっちもnullなら「現在地」', () async {
      final tPlacemark = geo.Placemark(
        locality: null,
        administrativeArea: null,
      );
      when(
        () => mockGeocoding.placemarkFromCoordinates(any(), any()),
      ).thenAnswer((_) async => [tPlacemark]);

      final result = await repository.getCurrentLocationData(
        lat: tLat,
        lon: tLon,
      );

      expect(result.name, '現在地');
    });

    test('エラーのときは専用のメッセージを投げるか', () async {
      when(
        () => mockGeocoding.placemarkFromCoordinates(any(), any()),
      ).thenThrow(Exception('Service Error'));

      expect(
        () => repository.getCurrentLocationData(lat: tLat, lon: tLon),
        // throwA:今からエラーが起こるという予想を待ち構える
        throwsA(
          //isA<Exception>:エラーがexeptionである確認　having:エラーの中身を詳しく調べる
          isA<Exception>().having(
            (error) => error.toString(), // エラーの文字を取り出す
            '',
            contains('住所が見つかりませんでした'), // エラーにこの文字が入っているか
          ),
        ),
      );
    });
  });
}
