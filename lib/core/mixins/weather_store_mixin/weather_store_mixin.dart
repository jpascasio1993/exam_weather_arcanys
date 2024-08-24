import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';

mixin WeatherStoreMixin<E extends StatefulWidget> on State<E> {
  late WeatherStore weatherStore;
  @override
  void initState() {
    super.initState();
    weatherStore = BlocProvider.of<WeatherStore>(context);
  }

  @override
  void dispose() {
    weatherStore.close();
    super.dispose();
  }
}