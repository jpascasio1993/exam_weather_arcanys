import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/services/weather_service.dart';

abstract class ICoreRepositories {
  IWeatherRepository weatherRepository({required WeatherService service, required List<int> dummyIds});
}