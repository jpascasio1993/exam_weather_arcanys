import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';

abstract class ICoreStoreDependencies {
  WeatherStore weatherStore({required IWeatherRepository weatherRepository});
}