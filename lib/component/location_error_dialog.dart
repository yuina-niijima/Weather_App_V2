import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class LocationErrorDialog extends StatelessWidget {
  const LocationErrorDialog({super.key});

  /// 位置情報エラーを通知し、OSの設定画面へ誘導する
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        '位置情報を取得できません',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      content: const Text(
        '位置情報の利用が許可されていないか、端末の設定がオフになっています。\n設定画面から許可してください。',
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('閉じる'),
        ),
        FilledButton(
          onPressed: () async {
            Navigator.pop(context);
            await openAppSettings();
          },
          child: const Text('設定を開く'),
        ),
      ],
    );
  }
}
