import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:retrofit/http.dart';
import 'package:weather_exam_arcanys/data/domain/response/weather_response/weather_response.dart';
import 'package:weather_exam_arcanys/data/domain/weather_dto/weather_dto.dart';

part 'weather_service.g.dart';

@RestApi(
  parser: Parser.FlutterCompute
)
abstract class WeatherService {
  factory WeatherService(Dio dio, {required String baseUrl}) = _WeatherService;

  @GET('/data/2.5/group')
  Future<WeatherResponse> getWeathers(@Query('id') String cityIds);

  @GET('/data/2.5/weather')
  Future<WeatherDTO> getWeather(@Query('id') int cityId);
}

WeatherResponse deserializeWeatherResponse(Map<String, dynamic> json) => WeatherResponse.fromJson(json);

WeatherDTO deserializeWeatherDTO(Map<String, dynamic> json) => WeatherDTO.fromJson(json);