import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'prefectures.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: PrefectureListScreen());
  }
}

class PrefectureListScreen extends HookConsumerWidget {
  const PrefectureListScreen({super.key});

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
