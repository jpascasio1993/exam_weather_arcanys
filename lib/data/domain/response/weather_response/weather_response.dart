import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_exam_arcanys/data/domain/weather_dto/weather_dto.dart';

part 'weather_response.freezed.dart';

part 'weather_response.g.dart';

@freezed
class WeatherResponse with _$WeatherResponse {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherResponse({@JsonKey(name: 'list') @Default([]) List<WeatherDTO> weathers}) = _WeatherResponse;

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);
}
