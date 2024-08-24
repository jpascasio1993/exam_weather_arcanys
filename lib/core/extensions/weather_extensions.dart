import 'package:flutter/material.dart';
import 'package:weather_exam_arcanys/ui/resources/assets.gen.dart';

extension WeatherExtension on String {
  Image weatherIcon() {
    if(toLowerCase().contains('sun')) return Assets.sun.image();
    if(toLowerCase().contains('rain')) return Assets.heavyRain.image();
    if(['cloudy', 'clouds'].contains(toLowerCase())) return Assets.cloudy.image();
    return Assets.weather.image();
  }
}