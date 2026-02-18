import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'prefectures.dart';

class PrefectureScreen extends ConsumerWidget {
  const PrefectureScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final prefectures = ref.watch(prefecturesProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('都道府県選択')),
      body: ListView.builder(
        itemCount: prefectures.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(prefectures[index]),
            onTap: () {},
          );
        },
      ),
    );
  }
}
