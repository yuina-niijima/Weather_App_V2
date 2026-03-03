/// 天気情報取得に関する基底例外クラス
sealed class WeatherException implements Exception {
  final String message;
  WeatherException(this.message);
}

/// ネットワーク未接続時
class NetworkException extends WeatherException {
  NetworkException() : super('ネットワークに接続されていません。通信環境を確認してください。');
}

/// サーバー側（API）のエラー
class ServerException extends WeatherException {
  ServerException() : super('天気情報の取得に失敗しました。しばらく時間を置いて再度お試しください。');
}

/// 位置情報の権限がない場合
class LocationPermissionException extends WeatherException {
  LocationPermissionException() : super('位置情報の利用が許可されていません。');
}

/// その他の予期せぬエラー
class UnknownException extends WeatherException {
  UnknownException() : super('予期せぬエラーが発生しました。');
}
