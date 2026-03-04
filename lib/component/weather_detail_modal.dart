import 'package:flutter/material.dart';
import 'package:weather_app_v2/page/weather_detail_screen.dart';

class WeatherDetailModal {
  static Future<void> showWeatherModal(BuildContext context, String city) {
    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => WeatherDetailScreen(city: city),
    );
  }
}
