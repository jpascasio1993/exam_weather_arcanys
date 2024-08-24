import 'package:injectable/injectable.dart';
import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/repositories/weather_repository/weather_repository.dart';
import 'package:weather_exam_arcanys/data/services/weather_service.dart';
import 'package:weather_exam_arcanys/di/core_dependencies/i_core_dependencies.dart';
import 'package:weather_exam_arcanys/di/core_repositories/i_core_repositories.dart';

@module
abstract class CoreRepositories implements ICoreRepositories {
  @lazySingleton
  @override
  IWeatherRepository weatherRepository(
          {required WeatherService service, @Named(API_WEATHER_DUMMY_IDS) required List<int> dummyIds}) =>
      WeatherRepository(weatherService: service, dummyWeatherIds: dummyIds);
}
