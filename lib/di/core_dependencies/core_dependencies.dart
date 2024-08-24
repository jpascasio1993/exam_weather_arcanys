import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:weather_exam_arcanys/data/services/weather_service.dart';
import 'package:weather_exam_arcanys/di/core_dependencies/i_core_dependencies.dart';

@module
abstract class CoreDependencies implements ICoreDependencies {
  @singleton
  @Named(API_BASE_URL)
  @override
  String baseApiUrl() => 'https://api.openweathermap.org';

  @lazySingleton
  @override
  Dio getDio({@Named(API_BASE_URL) required String baseUrl, @Named(API_KEY) required String apiKey}) {
    Dio dio = Dio();
    dio.options.connectTimeout = const Duration(seconds: 60000);
    dio.options.receiveTimeout = const Duration(seconds: 60000);
    dio.options.responseType = ResponseType.json;
    dio.options.contentType = 'application/json';
    dio.options.followRedirects = false;
    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (options, handler) {
        options.queryParameters.addAll({'units': 'metric', 'appid': apiKey});
        return handler.next(options);
      },
    ));
    return dio;
  }

  @singleton
  @Named(API_KEY)
  @override
  String weatherApiKey() => '351ab5c2ef3ce4269f321d39214aa5ca';

  @lazySingleton
  @override
  WeatherService weatherService({required Dio dio, @Named(API_BASE_URL) required String baseUrl}) =>
      WeatherService(dio, baseUrl: baseUrl);

  @Named(API_WEATHER_DUMMY_IDS)
  @lazySingleton
  @override
  List<int> weatherStateIds() => [1701668, 3067696, 1835848];
}
