import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather_exam_arcanys/data/domain/weather_stats_dto/weather_stats_dto.dart';
import 'package:weather_exam_arcanys/data/domain/weather_temp_dto/weather_temp_dto.dart';

part 'weather_dto.freezed.dart';

part 'weather_dto.g.dart';

@freezed
class WeatherDTO with _$WeatherDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherDTO({
    required int id,
    @Default([]) List<WeatherStatsDTO> weather,
    @JsonKey(name: 'name') required String city,
    @JsonKey(name: 'main') required WeatherTempDTO temp,
  }) = _WeatherDTO;

  factory WeatherDTO.fromJson(Map<String, dynamic> json) => _$WeatherDTOFromJson(json);
}