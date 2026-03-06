import 'package:flutter/material.dart';
import 'package:weather_app_v2/model/location_data.dart';
import 'package:weather_app_v2/page/weather_detail_screen.dart';

class WeatherDetailModal {
  static Future<void> showWeatherModal(
    BuildContext context,
    LocationData location,
  ) {
    return showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (context) => WeatherDetailScreen(
        location: location,
      ),
    );
  }
}
