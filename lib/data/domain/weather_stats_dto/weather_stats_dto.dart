import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_stats_dto.freezed.dart';

part 'weather_stats_dto.g.dart';

@freezed
class WeatherStatsDTO with _$WeatherStatsDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherStatsDTO({
    required String main,
    required String description
  }) = _WeatherStatsDTO;

  factory WeatherStatsDTO.fromJson(Map<String, dynamic> json) => _$WeatherStatsDTOFromJson(json);
}
