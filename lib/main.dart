import 'package:flutter/material.dart';
import 'package:weather_app_v2/main_home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'main.g.dart';

@riverpod
String helloWorld(Ref ref) {
  return 'Hello world';
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MainHomePage());
  }
}
