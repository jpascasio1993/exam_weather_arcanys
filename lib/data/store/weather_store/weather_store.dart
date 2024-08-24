import 'package:weather_exam_arcanys/data/domain/weather/weather.dart';
import 'package:weather_exam_arcanys/data/repositories/weather_repository/i_weather_repository.dart';
import 'package:weather_exam_arcanys/data/state/request_state/request_state.dart';
import 'package:weather_exam_arcanys/data/store/base_store.dart';
import 'package:weather_exam_arcanys/data/store/weather_store/weather_store_state.dart';

class WeatherStore extends BaseStore<WeatherStoreState> {
  final IWeatherRepository repository;

  WeatherStore({required this.repository}) : super(const WeatherStoreState());

  final RequestState<List<Weather>> _weathersRequest = RequestState();

  RequestState<List<Weather>> get weathersRequest => _weathersRequest;

  final RequestState<Weather> _weatherRequest = RequestState();

  RequestState<Weather> get weatherRequest => _weatherRequest;

  @override
  void init() {
    requestStates = [_weathersRequest, _weatherRequest];
    subscriptions = [
      _weathersRequest.stream.listen((event) {
        emit(state.copyWith(weathers: event.data ?? [], isLoading: event.isLoading, exception: event.exception));
      }),
      _weatherRequest.stream.listen((event) {
        emit(state.copyWith(isLoading: event.isLoading, exception: event.exception, selectedWeather: event.data));
      })
    ];
  }

  Future<List<Weather>> getWeathers() async {
    await _weathersRequest.doRequest(() async {
      final res = await repository.getWeathers();
      return res.when(
          success: (data) => data,
          error: (message, exception, stackTrace) =>
              Error.throwWithStackTrace(exception, stackTrace ?? StackTrace.empty));
    });

    return _weathersRequest.data ?? [];
  }

  Future<Weather?> getWeather(int id) async {
    await _weatherRequest.doRequest(() async {
      final res = await repository.getWeather(id);
      return res.when(
          success: (data) => data,
          error: (message, exception, stackTrace) =>
              Error.throwWithStackTrace(exception, stackTrace ?? StackTrace.empty));
    });

    return _weatherRequest.data;
  }
}
