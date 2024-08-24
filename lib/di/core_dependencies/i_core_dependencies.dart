import 'package:dio/dio.dart';
import 'package:weather_exam_arcanys/data/services/weather_service.dart';

const API_BASE_URL = 'api_base_url';
const API_KEY = 'api_key';
const API_WEATHER_DUMMY_IDS = 'weather_dummy_ids';

abstract class ICoreDependencies {
  Dio getDio({required String baseUrl, required String apiKey});
  String baseApiUrl();
  String weatherApiKey();
  // AppDatabase getAppDatabase();
  WeatherService weatherService({required Dio dio, required String baseUrl});
  List<int> weatherStateIds();
  // WeatherDao weatherDao(AppDatabase appDatabase);
  // FavoritesDao favoritesDao(AppDatabase appDatabase);
  // IWeatherRepository weatherRepository({required WeatherDao weatherDao, required FavoritesDao favoritesDao, required WeatherService weatherService});
  // WeatherBloc weatherBloc({required IWeatherRepository weatherRepository});
  // WeatherDetailsBloc weatherDetailsBloc({required IWeatherRepository weatherRepository});
}