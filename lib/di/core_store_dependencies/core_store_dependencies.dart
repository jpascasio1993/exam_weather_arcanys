import 'package:injectable/injectable.dart';
import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store.dart';
import 'package:weather_exam_arcanys/di/core_store_dependencies/i_core_store_dependencies.dart';

@module
abstract class CoreStoreDependencies implements ICoreStoreDependencies {
  @lazySingleton
  @override
  WeatherStore weatherStore({required IWeatherRepository weatherRepository}) =>
      WeatherStore(repository: weatherRepository);
}
