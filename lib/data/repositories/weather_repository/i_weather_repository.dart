import 'package:weather_exam_arcanys/data/domain/result/result.dart';
import 'package:weather_exam_arcanys/data/domain/weather/weather.dart';

abstract class IWeatherRepository {
  Future<Result<Weather>> getWeather(int id);
  Future<Result<List<Weather>>> getWeathers();
}