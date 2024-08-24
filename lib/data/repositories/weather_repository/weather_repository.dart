import 'package:dio/dio.dart';
import 'package:weather_exam_arcanys/data/domain/result/result.dart';
import 'package:weather_exam_arcanys/data/domain/weather/weather.dart';
import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/services/weather_service.dart';

class WeatherRepository implements IWeatherRepository {
  final WeatherService weatherService;
  final List<int> dummyWeatherIds;

  WeatherRepository({required this.weatherService, required this.dummyWeatherIds});

  @override
  Future<Result<Weather>> getWeather(int id) async {
    try {
      final weatherDTO = await weatherService.getWeather(id);
      final weather = Weather(
          id: weatherDTO.id,
          city: weatherDTO.city,
          status: weatherDTO.weather.isEmpty ? 'N/A' : weatherDTO.weather[0].main,
          temp: weatherDTO.temp.temp,
          tempMin: weatherDTO.temp.tempMin,
          tempMax: weatherDTO.temp.tempMax);
      return Result.success(weather);
    } on DioError catch (e) {
      return Result.error('Failed to get weather details', exception: e, stackTrace: e.stackTrace);
    } on Exception catch (e, s) {
      return Result.error('[Exception] Failed to get weather details', exception: e, stackTrace: s);
    }
  }

  @override
  Future<Result<List<Weather>>> getWeathers() async {
    try {
      final res = await weatherService.getWeathers(dummyWeatherIds.join(','));
      final result = res.weathers
          .map((weather) => Weather(
                id: weather.id,
                city: weather.city,
                status: weather.weather.isEmpty ? 'N/A' : weather.weather[0].main,
                temp: weather.temp.temp,
                tempMin: weather.temp.tempMin,
                tempMax: weather.temp.tempMax,
              ))
          .toList();

      return Result.success(result);
    } on DioError catch (e) {
      return Result.error('Failed to get contact support details', exception: e, stackTrace: e.stackTrace);
    } on Exception catch (e, s) {
      return Result.error('[Exception] Failed to get contact support details', exception: e, stackTrace: s);
    }
  }
}
