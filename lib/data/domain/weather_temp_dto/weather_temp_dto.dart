import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_temp_dto.freezed.dart';

part 'weather_temp_dto.g.dart';

@freezed
class WeatherTempDTO with _$WeatherTempDTO {
  @JsonSerializable(explicitToJson: true)
  const factory WeatherTempDTO(
      {required double temp,
        @JsonKey(name: 'temp_min') required double tempMin,
        @JsonKey(name: 'temp_max') required double tempMax}) = _WeatherTempDTO;

  factory WeatherTempDTO.fromJson(Map<String, dynamic> json) => _$WeatherTempDTOFromJson(json);
}
