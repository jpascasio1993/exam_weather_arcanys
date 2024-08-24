import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_exam_arcanys/data/domain/weather/weather.dart';

part 'weather_store_state.freezed.dart';

@freezed
class WeatherStoreState with _$WeatherStoreState {
  const factory WeatherStoreState(
      {@Default([]) List<Weather> weathers,
      Weather? selectedWeather,
      @Default(false) bool isLoading,
      Exception? exception}) = _WeatherStoreState;
}
