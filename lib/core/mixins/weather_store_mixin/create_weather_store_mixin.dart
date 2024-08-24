import 'package:flutter/material.dart';
import 'package:weather_exam_arcanys/core/mixins/service_locator_mixin.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';

mixin CreateWeatherStoreMixin<E extends StatefulWidget> on ServiceLocatorMixin<E> {
  late WeatherStore weatherStore;
  @override
  void initState() {
    super.initState();
    weatherStore = serviceLocator<WeatherStore>();
  }

  @override
  void dispose() {
    weatherStore.close();
    super.dispose();
  }
}